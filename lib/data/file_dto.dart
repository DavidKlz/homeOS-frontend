import 'package:freezed_annotation/freezed_annotation.dart';

import 'meta_info_dto.dart';

part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

@freezed
class FileDTO with _$FileDTO {
  const factory FileDTO({
    required String name,
    required bool favorite,
    required bool isVideo,
    required List<MetaInfoDTO> metaInfos,
    @Default(-1) int id,
  }) = _FileDTO;
  factory FileDTO.fromJson(Map<String, dynamic> json) =>
      _$FileDTOFromJson(json);
}
