// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'buy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Buy _$BuyFromJson(Map<String, dynamic> json) {
  return _Buy.fromJson(json);
}

/// @nodoc
mixin _$Buy {
  int? get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get carId => throw _privateConstructorUsedError;
  int get sellerId => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  int get advanceAmount => throw _privateConstructorUsedError;
  String get expectedPassdate => throw _privateConstructorUsedError;
  String? get actualPassdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuyCopyWith<Buy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuyCopyWith<$Res> {
  factory $BuyCopyWith(Buy value, $Res Function(Buy) then) =
      _$BuyCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String date,
      int carId,
      int sellerId,
      int totalAmount,
      int advanceAmount,
      String expectedPassdate,
      String? actualPassdate});
}

/// @nodoc
class _$BuyCopyWithImpl<$Res> implements $BuyCopyWith<$Res> {
  _$BuyCopyWithImpl(this._value, this._then);

  final Buy _value;
  // ignore: unused_field
  final $Res Function(Buy) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? carId = freezed,
    Object? sellerId = freezed,
    Object? totalAmount = freezed,
    Object? advanceAmount = freezed,
    Object? expectedPassdate = freezed,
    Object? actualPassdate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      carId: carId == freezed
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: sellerId == freezed
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      advanceAmount: advanceAmount == freezed
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expectedPassdate: expectedPassdate == freezed
          ? _value.expectedPassdate
          : expectedPassdate // ignore: cast_nullable_to_non_nullable
              as String,
      actualPassdate: actualPassdate == freezed
          ? _value.actualPassdate
          : actualPassdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BuyCopyWith<$Res> implements $BuyCopyWith<$Res> {
  factory _$$_BuyCopyWith(_$_Buy value, $Res Function(_$_Buy) then) =
      __$$_BuyCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String date,
      int carId,
      int sellerId,
      int totalAmount,
      int advanceAmount,
      String expectedPassdate,
      String? actualPassdate});
}

/// @nodoc
class __$$_BuyCopyWithImpl<$Res> extends _$BuyCopyWithImpl<$Res>
    implements _$$_BuyCopyWith<$Res> {
  __$$_BuyCopyWithImpl(_$_Buy _value, $Res Function(_$_Buy) _then)
      : super(_value, (v) => _then(v as _$_Buy));

  @override
  _$_Buy get _value => super._value as _$_Buy;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? carId = freezed,
    Object? sellerId = freezed,
    Object? totalAmount = freezed,
    Object? advanceAmount = freezed,
    Object? expectedPassdate = freezed,
    Object? actualPassdate = freezed,
  }) {
    return _then(_$_Buy(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      carId: carId == freezed
          ? _value.carId
          : carId // ignore: cast_nullable_to_non_nullable
              as int,
      sellerId: sellerId == freezed
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: totalAmount == freezed
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      advanceAmount: advanceAmount == freezed
          ? _value.advanceAmount
          : advanceAmount // ignore: cast_nullable_to_non_nullable
              as int,
      expectedPassdate: expectedPassdate == freezed
          ? _value.expectedPassdate
          : expectedPassdate // ignore: cast_nullable_to_non_nullable
              as String,
      actualPassdate: actualPassdate == freezed
          ? _value.actualPassdate
          : actualPassdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Buy implements _Buy {
  _$_Buy(
      {this.id,
      required this.date,
      required this.carId,
      required this.sellerId,
      required this.totalAmount,
      this.advanceAmount = 0,
      required this.expectedPassdate,
      this.actualPassdate});

  factory _$_Buy.fromJson(Map<String, dynamic> json) => _$$_BuyFromJson(json);

  @override
  final int? id;
  @override
  final String date;
  @override
  final int carId;
  @override
  final int sellerId;
  @override
  final int totalAmount;
  @override
  @JsonKey()
  final int advanceAmount;
  @override
  final String expectedPassdate;
  @override
  final String? actualPassdate;

  @override
  String toString() {
    return 'Buy(id: $id, date: $date, carId: $carId, sellerId: $sellerId, totalAmount: $totalAmount, advanceAmount: $advanceAmount, expectedPassdate: $expectedPassdate, actualPassdate: $actualPassdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Buy &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.carId, carId) &&
            const DeepCollectionEquality().equals(other.sellerId, sellerId) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality()
                .equals(other.advanceAmount, advanceAmount) &&
            const DeepCollectionEquality()
                .equals(other.expectedPassdate, expectedPassdate) &&
            const DeepCollectionEquality()
                .equals(other.actualPassdate, actualPassdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(carId),
      const DeepCollectionEquality().hash(sellerId),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(advanceAmount),
      const DeepCollectionEquality().hash(expectedPassdate),
      const DeepCollectionEquality().hash(actualPassdate));

  @JsonKey(ignore: true)
  @override
  _$$_BuyCopyWith<_$_Buy> get copyWith =>
      __$$_BuyCopyWithImpl<_$_Buy>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuyToJson(this);
  }
}

abstract class _Buy implements Buy {
  factory _Buy(
      {final int? id,
      required final String date,
      required final int carId,
      required final int sellerId,
      required final int totalAmount,
      final int advanceAmount,
      required final String expectedPassdate,
      final String? actualPassdate}) = _$_Buy;

  factory _Buy.fromJson(Map<String, dynamic> json) = _$_Buy.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get carId => throw _privateConstructorUsedError;
  @override
  int get sellerId => throw _privateConstructorUsedError;
  @override
  int get totalAmount => throw _privateConstructorUsedError;
  @override
  int get advanceAmount => throw _privateConstructorUsedError;
  @override
  String get expectedPassdate => throw _privateConstructorUsedError;
  @override
  String? get actualPassdate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_BuyCopyWith<_$_Buy> get copyWith => throw _privateConstructorUsedError;
}
