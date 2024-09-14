// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaInfoDTOImpl _$$MetaInfoDTOImplFromJson(Map<String, dynamic> json) =>
    _$MetaInfoDTOImpl(
      type: json['type'] as String,
      value: json['value'] as String,
      id: (json['id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$MetaInfoDTOImplToJson(_$MetaInfoDTOImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'id': instance.id,
    };
