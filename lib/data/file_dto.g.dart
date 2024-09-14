// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FileDTOImpl _$$FileDTOImplFromJson(Map<String, dynamic> json) =>
    _$FileDTOImpl(
      name: json['name'] as String,
      favorite: json['favorite'] as bool,
      isVideo: json['isVideo'] as bool,
      metaInfos: (json['metaInfos'] as List<dynamic>)
          .map((e) => MetaInfoDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt() ?? -1,
    );

Map<String, dynamic> _$$FileDTOImplToJson(_$FileDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'favorite': instance.favorite,
      'isVideo': instance.isVideo,
      'metaInfos': instance.metaInfos,
      'id': instance.id,
    };
