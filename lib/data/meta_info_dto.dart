import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_info_dto.freezed.dart';
part 'meta_info_dto.g.dart';

@freezed
class MetaInfoDTO with _$MetaInfoDTO {
  const factory MetaInfoDTO({
    required String type,
    required String value,
    @Default(-1) int id,
  }) = _MetaInfoDTO;
  factory MetaInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$MetaInfoDTOFromJson(json);
}
