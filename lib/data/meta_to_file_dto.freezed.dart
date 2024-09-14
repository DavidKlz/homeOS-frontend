// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_to_file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaToFileDTO _$MetaToFileDTOFromJson(Map<String, dynamic> json) {
  return _MetaToFileDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaToFileDTO {
  int get fileId => throw _privateConstructorUsedError;
  int get metaId => throw _privateConstructorUsedError;

  /// Serializes this MetaToFileDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaToFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaToFileDTOCopyWith<MetaToFileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaToFileDTOCopyWith<$Res> {
  factory $MetaToFileDTOCopyWith(
          MetaToFileDTO value, $Res Function(MetaToFileDTO) then) =
      _$MetaToFileDTOCopyWithImpl<$Res, MetaToFileDTO>;
  @useResult
  $Res call({int fileId, int metaId});
}

/// @nodoc
class _$MetaToFileDTOCopyWithImpl<$Res, $Val extends MetaToFileDTO>
    implements $MetaToFileDTOCopyWith<$Res> {
  _$MetaToFileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaToFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? metaId = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      metaId: null == metaId
          ? _value.metaId
          : metaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaToFileDTOImplCopyWith<$Res>
    implements $MetaToFileDTOCopyWith<$Res> {
  factory _$$MetaToFileDTOImplCopyWith(
          _$MetaToFileDTOImpl value, $Res Function(_$MetaToFileDTOImpl) then) =
      __$$MetaToFileDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int fileId, int metaId});
}

/// @nodoc
class __$$MetaToFileDTOImplCopyWithImpl<$Res>
    extends _$MetaToFileDTOCopyWithImpl<$Res, _$MetaToFileDTOImpl>
    implements _$$MetaToFileDTOImplCopyWith<$Res> {
  __$$MetaToFileDTOImplCopyWithImpl(
      _$MetaToFileDTOImpl _value, $Res Function(_$MetaToFileDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaToFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? metaId = null,
  }) {
    return _then(_$MetaToFileDTOImpl(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as int,
      metaId: null == metaId
          ? _value.metaId
          : metaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaToFileDTOImpl implements _MetaToFileDTO {
  const _$MetaToFileDTOImpl({required this.fileId, required this.metaId});

  factory _$MetaToFileDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaToFileDTOImplFromJson(json);

  @override
  final int fileId;
  @override
  final int metaId;

  @override
  String toString() {
    return 'MetaToFileDTO(fileId: $fileId, metaId: $metaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaToFileDTOImpl &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.metaId, metaId) || other.metaId == metaId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fileId, metaId);

  /// Create a copy of MetaToFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaToFileDTOImplCopyWith<_$MetaToFileDTOImpl> get copyWith =>
      __$$MetaToFileDTOImplCopyWithImpl<_$MetaToFileDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaToFileDTOImplToJson(
      this,
    );
  }
}

abstract class _MetaToFileDTO implements MetaToFileDTO {
  const factory _MetaToFileDTO(
      {required final int fileId,
      required final int metaId}) = _$MetaToFileDTOImpl;

  factory _MetaToFileDTO.fromJson(Map<String, dynamic> json) =
      _$MetaToFileDTOImpl.fromJson;

  @override
  int get fileId;
  @override
  int get metaId;

  /// Create a copy of MetaToFileDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaToFileDTOImplCopyWith<_$MetaToFileDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
