// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'large.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Large _$LargeFromJson(Map<String, dynamic> json) {
  return _Large.fromJson(json);
}

/// @nodoc
class _$LargeTearOff {
  const _$LargeTearOff();

  _Large call({String? imageUrl, int? id}) {
    return _Large(
      imageUrl: imageUrl,
      id: id,
    );
  }

  Large fromJson(Map<String, Object?> json) {
    return Large.fromJson(json);
  }
}

/// @nodoc
const $Large = _$LargeTearOff();

/// @nodoc
mixin _$Large {
  String? get imageUrl => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LargeCopyWith<Large> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LargeCopyWith<$Res> {
  factory $LargeCopyWith(Large value, $Res Function(Large) then) =
      _$LargeCopyWithImpl<$Res>;
  $Res call({String? imageUrl, int? id});
}

/// @nodoc
class _$LargeCopyWithImpl<$Res> implements $LargeCopyWith<$Res> {
  _$LargeCopyWithImpl(this._value, this._then);

  final Large _value;
  // ignore: unused_field
  final $Res Function(Large) _then;

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
abstract class _$LargeCopyWith<$Res> implements $LargeCopyWith<$Res> {
  factory _$LargeCopyWith(_Large value, $Res Function(_Large) then) =
      __$LargeCopyWithImpl<$Res>;
  @override
  $Res call({String? imageUrl, int? id});
}

/// @nodoc
class __$LargeCopyWithImpl<$Res> extends _$LargeCopyWithImpl<$Res>
    implements _$LargeCopyWith<$Res> {
  __$LargeCopyWithImpl(_Large _value, $Res Function(_Large) _then)
      : super(_value, (v) => _then(v as _Large));

  @override
  _Large get _value => super._value as _Large;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_Large(
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
class _$_Large implements _Large {
  _$_Large({this.imageUrl, this.id});

  factory _$_Large.fromJson(Map<String, dynamic> json) =>
      _$$_LargeFromJson(json);

  @override
  final String? imageUrl;
  @override
  final int? id;

  @override
  String toString() {
    return 'Large(imageUrl: $imageUrl, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Large &&
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
  _$LargeCopyWith<_Large> get copyWith =>
      __$LargeCopyWithImpl<_Large>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LargeToJson(this);
  }
}

abstract class _Large implements Large {
  factory _Large({String? imageUrl, int? id}) = _$_Large;

  factory _Large.fromJson(Map<String, dynamic> json) = _$_Large.fromJson;

  @override
  String? get imageUrl;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$LargeCopyWith<_Large> get copyWith => throw _privateConstructorUsedError;
}
