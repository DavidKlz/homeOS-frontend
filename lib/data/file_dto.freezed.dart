// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileDTO _$FileDTOFromJson(Map<String, dynamic> json) {
  return _FileDTO.fromJson(json);
}

/// @nodoc
mixin _$FileDTO {
  String get name => throw _privateConstructorUsedError;
  bool get favorite => throw _privateConstructorUsedError;
  bool get isVideo => throw _privateConstructorUsedError;
  List<MetaInfoDTO> get metaInfos => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this FileDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FileDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileDTOCopyWith<FileDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDTOCopyWith<$Res> {
  factory $FileDTOCopyWith(FileDTO value, $Res Function(FileDTO) then) =
      _$FileDTOCopyWithImpl<$Res, FileDTO>;
  @useResult
  $Res call(
      {String name,
      bool favorite,
      bool isVideo,
      List<MetaInfoDTO> metaInfos,
      int id});
}

/// @nodoc
class _$FileDTOCopyWithImpl<$Res, $Val extends FileDTO>
    implements $FileDTOCopyWith<$Res> {
  _$FileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? favorite = null,
    Object? isVideo = null,
    Object? metaInfos = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      metaInfos: null == metaInfos
          ? _value.metaInfos
          : metaInfos // ignore: cast_nullable_to_non_nullable
              as List<MetaInfoDTO>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileDTOImplCopyWith<$Res> implements $FileDTOCopyWith<$Res> {
  factory _$$FileDTOImplCopyWith(
          _$FileDTOImpl value, $Res Function(_$FileDTOImpl) then) =
      __$$FileDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool favorite,
      bool isVideo,
      List<MetaInfoDTO> metaInfos,
      int id});
}

/// @nodoc
class __$$FileDTOImplCopyWithImpl<$Res>
    extends _$FileDTOCopyWithImpl<$Res, _$FileDTOImpl>
    implements _$$FileDTOImplCopyWith<$Res> {
  __$$FileDTOImplCopyWithImpl(
      _$FileDTOImpl _value, $Res Function(_$FileDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? favorite = null,
    Object? isVideo = null,
    Object? metaInfos = null,
    Object? id = null,
  }) {
    return _then(_$FileDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideo: null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      metaInfos: null == metaInfos
          ? _value._metaInfos
          : metaInfos // ignore: cast_nullable_to_non_nullable
              as List<MetaInfoDTO>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDTOImpl implements _FileDTO {
  const _$FileDTOImpl(
      {required this.name,
      required this.favorite,
      required this.isVideo,
      required final List<MetaInfoDTO> metaInfos,
      this.id = -1})
      : _metaInfos = metaInfos;

  factory _$FileDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDTOImplFromJson(json);

  @override
  final String name;
  @override
  final bool favorite;
  @override
  final bool isVideo;
  final List<MetaInfoDTO> _metaInfos;
  @override
  List<MetaInfoDTO> get metaInfos {
    if (_metaInfos is EqualUnmodifiableListView) return _metaInfos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_metaInfos);
  }

  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'FileDTO(name: $name, favorite: $favorite, isVideo: $isVideo, metaInfos: $metaInfos, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            const DeepCollectionEquality()
                .equals(other._metaInfos, _metaInfos) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, favorite, isVideo,
      const DeepCollectionEquality().hash(_metaInfos), id);

  /// Create a copy of FileDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDTOImplCopyWith<_$FileDTOImpl> get copyWith =>
      __$$FileDTOImplCopyWithImpl<_$FileDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDTOImplToJson(
      this,
    );
  }
}

abstract class _FileDTO implements FileDTO {
  const factory _FileDTO(
      {required final String name,
      required final bool favorite,
      required final bool isVideo,
      required final List<MetaInfoDTO> metaInfos,
      final int id}) = _$FileDTOImpl;

  factory _FileDTO.fromJson(Map<String, dynamic> json) = _$FileDTOImpl.fromJson;

  @override
  String get name;
  @override
  bool get favorite;
  @override
  bool get isVideo;
  @override
  List<MetaInfoDTO> get metaInfos;
  @override
  int get id;

  /// Create a copy of FileDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileDTOImplCopyWith<_$FileDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
