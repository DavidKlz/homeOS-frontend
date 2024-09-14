// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaInfoDTO _$MetaInfoDTOFromJson(Map<String, dynamic> json) {
  return _MetaInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaInfoDTO {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  /// Serializes this MetaInfoDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaInfoDTOCopyWith<MetaInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaInfoDTOCopyWith<$Res> {
  factory $MetaInfoDTOCopyWith(
          MetaInfoDTO value, $Res Function(MetaInfoDTO) then) =
      _$MetaInfoDTOCopyWithImpl<$Res, MetaInfoDTO>;
  @useResult
  $Res call({String type, String value, int id});
}

/// @nodoc
class _$MetaInfoDTOCopyWithImpl<$Res, $Val extends MetaInfoDTO>
    implements $MetaInfoDTOCopyWith<$Res> {
  _$MetaInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaInfoDTOImplCopyWith<$Res>
    implements $MetaInfoDTOCopyWith<$Res> {
  factory _$$MetaInfoDTOImplCopyWith(
          _$MetaInfoDTOImpl value, $Res Function(_$MetaInfoDTOImpl) then) =
      __$$MetaInfoDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value, int id});
}

/// @nodoc
class __$$MetaInfoDTOImplCopyWithImpl<$Res>
    extends _$MetaInfoDTOCopyWithImpl<$Res, _$MetaInfoDTOImpl>
    implements _$$MetaInfoDTOImplCopyWith<$Res> {
  __$$MetaInfoDTOImplCopyWithImpl(
      _$MetaInfoDTOImpl _value, $Res Function(_$MetaInfoDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
    Object? id = null,
  }) {
    return _then(_$MetaInfoDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaInfoDTOImpl implements _MetaInfoDTO {
  const _$MetaInfoDTOImpl(
      {required this.type, required this.value, this.id = -1});

  factory _$MetaInfoDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaInfoDTOImplFromJson(json);

  @override
  final String type;
  @override
  final String value;
  @override
  @JsonKey()
  final int id;

  @override
  String toString() {
    return 'MetaInfoDTO(type: $type, value: $value, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaInfoDTOImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value, id);

  /// Create a copy of MetaInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaInfoDTOImplCopyWith<_$MetaInfoDTOImpl> get copyWith =>
      __$$MetaInfoDTOImplCopyWithImpl<_$MetaInfoDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaInfoDTOImplToJson(
      this,
    );
  }
}

abstract class _MetaInfoDTO implements MetaInfoDTO {
  const factory _MetaInfoDTO(
      {required final String type,
      required final String value,
      final int id}) = _$MetaInfoDTOImpl;

  factory _MetaInfoDTO.fromJson(Map<String, dynamic> json) =
      _$MetaInfoDTOImpl.fromJson;

  @override
  String get type;
  @override
  String get value;
  @override
  int get id;

  /// Create a copy of MetaInfoDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaInfoDTOImplCopyWith<_$MetaInfoDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
