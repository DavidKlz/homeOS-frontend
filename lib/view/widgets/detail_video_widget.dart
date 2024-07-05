import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_video_controls/chewie.dart';
import 'package:video_player/video_player.dart';

import '../../config/constants/homeos_urls.dart';
import '../../data/file_dto.dart';

class DetailVideoWidget extends ConsumerStatefulWidget {
  final FileDTO file;
  const DetailVideoWidget({required this.file, super.key});

  @override
  ConsumerState<DetailVideoWidget> createState() => _DetailVideoWidgetState();
}

class _DetailVideoWidgetState extends ConsumerState<DetailVideoWidget>
    with TickerProviderStateMixin {
  int totalMilliseconds = 0;
  int currentMilliseconds = 0;
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);

    videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(HomeOSUrls.fileById(widget.file.id)))
      ..initialize().then(
        (value) => setState(
          () => chewieController = ChewieController(
            videoPlayerController: videoPlayerController,
            looping: true,
            allowFullScreen: false,
            allowPlaybackSpeedChanging: false,
            autoInitialize: true,
          ),
        ),
      );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _initVideoPlayer(),
        GestureDetector(
          onTap: _onPlayPressed,
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: animation,
          ),
        ),
      ],
    );
  }

  void _onPositionChange(double newPosition) {
    setState(() {
      currentMilliseconds = (totalMilliseconds * newPosition).round();
      var newDuration = Duration(
        milliseconds: currentMilliseconds,
      );
      videoPlayerController.seekTo(newDuration);
    });
  }

  Widget _initVideoPlayer() {
    if (videoPlayerController.value.isInitialized) {
      totalMilliseconds = videoPlayerController.value.duration.inMilliseconds;
      /*videoPlayerController.position.asStream().listen((event) => setState(() {
            if (event != null && currentMilliseconds != event.inMilliseconds) {
              currentMilliseconds = event.inMilliseconds;
            }
          }));*/
      return InteractiveViewer(
        transformationController: chewieController.transformationController,
        maxScale: chewieController.maxScale,
        panEnabled: chewieController.zoomAndPan,
        scaleEnabled: chewieController.zoomAndPan,
        child: Center(
          child: AspectRatio(
            aspectRatio: chewieController.aspectRatio ??
                chewieController.videoPlayerController.value.aspectRatio,
            child: VideoPlayer(videoPlayerController),
          ),
        ),
      );
    } else {
      return const CircularProgressIndicator();
    }
  }

  void _onPlayPressed() {
    setState(() {
      if (videoPlayerController.value.isPlaying) {
        videoPlayerController.pause();
        animationController.reverse();
      } else {
        videoPlayerController.play();
        animationController.forward();
      }
    });
  }

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60).abs());
    return "$twoDigitMinutes:$twoDigitSeconds";
  }
}
