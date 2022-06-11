// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Seller _$SellerFromJson(Map<String, dynamic> json) {
  return _Seller.fromJson(json);
}

/// @nodoc
mixin _$Seller {
  int? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellerCopyWith<Seller> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerCopyWith<$Res> {
  factory $SellerCopyWith(Seller value, $Res Function(Seller) then) =
      _$SellerCopyWithImpl<$Res>;
  $Res call({int? id, String name, String phone});
}

/// @nodoc
class _$SellerCopyWithImpl<$Res> implements $SellerCopyWith<$Res> {
  _$SellerCopyWithImpl(this._value, this._then);

  final Seller _value;
  // ignore: unused_field
  final $Res Function(Seller) _then;

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
abstract class _$$_SellerCopyWith<$Res> implements $SellerCopyWith<$Res> {
  factory _$$_SellerCopyWith(_$_Seller value, $Res Function(_$_Seller) then) =
      __$$_SellerCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String name, String phone});
}

/// @nodoc
class __$$_SellerCopyWithImpl<$Res> extends _$SellerCopyWithImpl<$Res>
    implements _$$_SellerCopyWith<$Res> {
  __$$_SellerCopyWithImpl(_$_Seller _value, $Res Function(_$_Seller) _then)
      : super(_value, (v) => _then(v as _$_Seller));

  @override
  _$_Seller get _value => super._value as _$_Seller;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
  }) {
    return _then(_$_Seller(
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
class _$_Seller implements _Seller {
  _$_Seller({this.id, required this.name, required this.phone});

  factory _$_Seller.fromJson(Map<String, dynamic> json) =>
      _$$_SellerFromJson(json);

  @override
  final int? id;
  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'Seller(id: $id, name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Seller &&
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
  _$$_SellerCopyWith<_$_Seller> get copyWith =>
      __$$_SellerCopyWithImpl<_$_Seller>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellerToJson(this);
  }
}

abstract class _Seller implements Seller {
  factory _Seller(
      {final int? id,
      required final String name,
      required final String phone}) = _$_Seller;

  factory _Seller.fromJson(Map<String, dynamic> json) = _$_Seller.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SellerCopyWith<_$_Seller> get copyWith =>
      throw _privateConstructorUsedError;
}
