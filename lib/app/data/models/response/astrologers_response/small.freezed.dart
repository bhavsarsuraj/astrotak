// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'small.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Small _$SmallFromJson(Map<String, dynamic> json) {
  return _Small.fromJson(json);
}

/// @nodoc
class _$SmallTearOff {
  const _$SmallTearOff();

  _Small call({dynamic imageUrl, dynamic id}) {
    return _Small(
      imageUrl: imageUrl,
      id: id,
    );
  }

  Small fromJson(Map<String, Object?> json) {
    return Small.fromJson(json);
  }
}

/// @nodoc
const $Small = _$SmallTearOff();

/// @nodoc
mixin _$Small {
  dynamic get imageUrl => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmallCopyWith<Small> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmallCopyWith<$Res> {
  factory $SmallCopyWith(Small value, $Res Function(Small) then) =
      _$SmallCopyWithImpl<$Res>;
  $Res call({dynamic imageUrl, dynamic id});
}

/// @nodoc
class _$SmallCopyWithImpl<$Res> implements $SmallCopyWith<$Res> {
  _$SmallCopyWithImpl(this._value, this._then);

  final Small _value;
  // ignore: unused_field
  final $Res Function(Small) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$SmallCopyWith<$Res> implements $SmallCopyWith<$Res> {
  factory _$SmallCopyWith(_Small value, $Res Function(_Small) then) =
      __$SmallCopyWithImpl<$Res>;
  @override
  $Res call({dynamic imageUrl, dynamic id});
}

/// @nodoc
class __$SmallCopyWithImpl<$Res> extends _$SmallCopyWithImpl<$Res>
    implements _$SmallCopyWith<$Res> {
  __$SmallCopyWithImpl(_Small _value, $Res Function(_Small) _then)
      : super(_value, (v) => _then(v as _Small));

  @override
  _Small get _value => super._value as _Small;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? id = freezed,
  }) {
    return _then(_Small(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Small implements _Small {
  _$_Small({this.imageUrl, this.id});

  factory _$_Small.fromJson(Map<String, dynamic> json) =>
      _$$_SmallFromJson(json);

  @override
  final dynamic imageUrl;
  @override
  final dynamic id;

  @override
  String toString() {
    return 'Small(imageUrl: $imageUrl, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Small &&
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
  _$SmallCopyWith<_Small> get copyWith =>
      __$SmallCopyWithImpl<_Small>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmallToJson(this);
  }
}

abstract class _Small implements Small {
  factory _Small({dynamic imageUrl, dynamic id}) = _$_Small;

  factory _Small.fromJson(Map<String, dynamic> json) = _$_Small.fromJson;

  @override
  dynamic get imageUrl;
  @override
  dynamic get id;
  @override
  @JsonKey(ignore: true)
  _$SmallCopyWith<_Small> get copyWith => throw _privateConstructorUsedError;
}
