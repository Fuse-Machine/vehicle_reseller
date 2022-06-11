// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'buyer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Buyer _$BuyerFromJson(Map<String, dynamic> json) {
  return _Buyer.fromJson(json);
}

/// @nodoc
mixin _$Buyer {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyerCopyWith<Buyer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyerCopyWith<$Res> {
  factory $BuyerCopyWith(Buyer value, $Res Function(Buyer) then) =
      _$BuyerCopyWithImpl<$Res>;
  $Res call({int? id, String name, String phone});
}

/// @nodoc
class _$BuyerCopyWithImpl<$Res> implements $BuyerCopyWith<$Res> {
  _$BuyerCopyWithImpl(this._value, this._then);

  final Buyer _value;
  // ignore: unused_field
  final $Res Function(Buyer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_BuyerCopyWith<$Res> implements $BuyerCopyWith<$Res> {
  factory _$$_BuyerCopyWith(_$_Buyer value, $Res Function(_$_Buyer) then) =
      __$$_BuyerCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String name, String phone});
}

/// @nodoc
class __$$_BuyerCopyWithImpl<$Res> extends _$BuyerCopyWithImpl<$Res>
    implements _$$_BuyerCopyWith<$Res> {
  __$$_BuyerCopyWithImpl(_$_Buyer _value, $Res Function(_$_Buyer) _then)
      : super(_value, (v) => _then(v as _$_Buyer));

  @override
  _$_Buyer get _value => super._value as _$_Buyer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Buyer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Buyer implements _Buyer {
  _$_Buyer({this.id, required this.name, required this.phone});

  factory _$_Buyer.fromJson(Map<String, dynamic> json) =>
      _$$_BuyerFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'Buyer(id: $id, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Buyer &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone));

  @JsonKey(ignore: true)
  @override
  _$$_BuyerCopyWith<_$_Buyer> get copyWith =>
      __$$_BuyerCopyWithImpl<_$_Buyer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyerToJson(this);
  }
}

abstract class _Buyer implements Buyer {
  factory _Buyer(
      {final int? id,
      required final String name,
      required final String phone}) = _$_Buyer;

  factory _Buyer.fromJson(Map<String, dynamic> json) = _$_Buyer.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BuyerCopyWith<_$_Buyer> get copyWith =>
      throw _privateConstructorUsedError;
}
