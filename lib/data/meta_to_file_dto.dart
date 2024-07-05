import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_to_file_dto.freezed.dart';
part 'meta_to_file_dto.g.dart';

@freezed
class MetaToFileDTO with _$MetaToFileDTO {
  const factory MetaToFileDTO({
    required int fileId,
    required int metaId,
  }) = _MetaToFileDTO;

  factory MetaToFileDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaToFileDTOFromJson(json);
}
