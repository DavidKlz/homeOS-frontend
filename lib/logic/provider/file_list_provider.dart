import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../config/constants/homeos_urls.dart';
import '../../data/file_dto.dart';

part 'file_list_provider.g.dart';

@riverpod
class FileList extends _$FileList {
  @override
  Future<List<FileDTO>> build() async {
    final dio = Dio();
    Response response = await dio.get(HomeOSUrls.fileAll);
    List<FileDTO> result = List.empty(growable: true);
    for (var file in response.data) {
      result.add(FileDTO.fromJson(file));
    }
    return result;
  }

  Future<void> sync() async {
    final dio = Dio();
    await dio.get(HomeOSUrls.sync);
    Response response = await dio.get(HomeOSUrls.fileAll);
    List<FileDTO> result = List.empty(growable: true);
    for (var file in response.data) {
      result.add(FileDTO.fromJson(file));
    }
    state = AsyncData(result);
  }
}
