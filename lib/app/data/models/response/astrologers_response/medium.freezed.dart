// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'medium.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Medium _$MediumFromJson(Map<String, dynamic> json) {
  return _Medium.fromJson(json);
}

/// @nodoc
class _$MediumTearOff {
  const _$MediumTearOff();

  _Medium call({String? imageUrl, int? id}) {
    return _Medium(
      imageUrl: imageUrl,
      id: id,
    );
  }

  Medium fromJson(Map<String, Object?> json) {
    return Medium.fromJson(json);
  }
}

/// @nodoc
const $Medium = _$MediumTearOff();

/// @nodoc
mixin _$Medium {
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediumCopyWith<Medium> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumCopyWith<$Res> {
  factory $MediumCopyWith(Medium value, $Res Function(Medium) then) =
      _$MediumCopyWithImpl<$Res>;
  $Res call({String? imageUrl, int? id});
}

/// @nodoc
class _$MediumCopyWithImpl<$Res> implements $MediumCopyWith<$Res> {
  _$MediumCopyWithImpl(this._value, this._then);

  final Medium _value;
  // ignore: unused_field
  final $Res Function(Medium) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$MediumCopyWith<$Res> implements $MediumCopyWith<$Res> {
  factory _$MediumCopyWith(_Medium value, $Res Function(_Medium) then) =
      __$MediumCopyWithImpl<$Res>;
  @override
  $Res call({String? imageUrl, int? id});
}

/// @nodoc
class __$MediumCopyWithImpl<$Res> extends _$MediumCopyWithImpl<$Res>
    implements _$MediumCopyWith<$Res> {
  __$MediumCopyWithImpl(_Medium _value, $Res Function(_Medium) _then)
      : super(_value, (v) => _then(v as _Medium));

  @override
  _Medium get _value => super._value as _Medium;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_Medium(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Medium implements _Medium {
  _$_Medium({this.imageUrl, this.id});

  factory _$_Medium.fromJson(Map<String, dynamic> json) =>
      _$$_MediumFromJson(json);

  @override
  final String? imageUrl;
  @override
  final int? id;

  @override
  String toString() {
    return 'Medium(imageUrl: $imageUrl, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Medium &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$MediumCopyWith<_Medium> get copyWith =>
      __$MediumCopyWithImpl<_Medium>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediumToJson(this);
  }
}

abstract class _Medium implements Medium {
  factory _Medium({String? imageUrl, int? id}) = _$_Medium;

  factory _Medium.fromJson(Map<String, dynamic> json) = _$_Medium.fromJson;

  @override
  String? get imageUrl;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$MediumCopyWith<_Medium> get copyWith => throw _privateConstructorUsedError;
}
