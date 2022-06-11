// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sell _$SellFromJson(Map<String, dynamic> json) {
  return _Sell.fromJson(json);
}

/// @nodoc
mixin _$Sell {
  int? get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get carId => throw _privateConstructorUsedError;
  int get buyerId => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  int get advanceAmount => throw _privateConstructorUsedError;
  String get expectedPassdate => throw _privateConstructorUsedError;
  String? get acutalPassdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SellCopyWith<Sell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellCopyWith<$Res> {
  factory $SellCopyWith(Sell value, $Res Function(Sell) then) =
      _$SellCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String date,
      int carId,
      int buyerId,
      int totalAmount,
      int advanceAmount,
      String expectedPassdate,
      String? acutalPassdate});
}

/// @nodoc
class _$SellCopyWithImpl<$Res> implements $SellCopyWith<$Res> {
  _$SellCopyWithImpl(this._value, this._then);

  final Sell _value;
  // ignore: unused_field
  final $Res Function(Sell) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? carId = freezed,
    Object? buyerId = freezed,
    Object? totalAmount = freezed,
    Object? advanceAmount = freezed,
    Object? expectedPassdate = freezed,
    Object? acutalPassdate = freezed,
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
      buyerId: buyerId == freezed
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
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
      acutalPassdate: acutalPassdate == freezed
          ? _value.acutalPassdate
          : acutalPassdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SellCopyWith<$Res> implements $SellCopyWith<$Res> {
  factory _$$_SellCopyWith(_$_Sell value, $Res Function(_$_Sell) then) =
      __$$_SellCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String date,
      int carId,
      int buyerId,
      int totalAmount,
      int advanceAmount,
      String expectedPassdate,
      String? acutalPassdate});
}

/// @nodoc
class __$$_SellCopyWithImpl<$Res> extends _$SellCopyWithImpl<$Res>
    implements _$$_SellCopyWith<$Res> {
  __$$_SellCopyWithImpl(_$_Sell _value, $Res Function(_$_Sell) _then)
      : super(_value, (v) => _then(v as _$_Sell));

  @override
  _$_Sell get _value => super._value as _$_Sell;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? carId = freezed,
    Object? buyerId = freezed,
    Object? totalAmount = freezed,
    Object? advanceAmount = freezed,
    Object? expectedPassdate = freezed,
    Object? acutalPassdate = freezed,
  }) {
    return _then(_$_Sell(
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
      buyerId: buyerId == freezed
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
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
      acutalPassdate: acutalPassdate == freezed
          ? _value.acutalPassdate
          : acutalPassdate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sell implements _Sell {
  _$_Sell(
      {this.id,
      required this.date,
      required this.carId,
      required this.buyerId,
      required this.totalAmount,
      this.advanceAmount = 0,
      required this.expectedPassdate,
      this.acutalPassdate});

  factory _$_Sell.fromJson(Map<String, dynamic> json) => _$$_SellFromJson(json);

  @override
  final int? id;
  @override
  final String date;
  @override
  final int carId;
  @override
  final int buyerId;
  @override
  final int totalAmount;
  @override
  @JsonKey()
  final int advanceAmount;
  @override
  final String expectedPassdate;
  @override
  final String? acutalPassdate;

  @override
  String toString() {
    return 'Sell(id: $id, date: $date, carId: $carId, buyerId: $buyerId, totalAmount: $totalAmount, advanceAmount: $advanceAmount, expectedPassdate: $expectedPassdate, acutalPassdate: $acutalPassdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sell &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.carId, carId) &&
            const DeepCollectionEquality().equals(other.buyerId, buyerId) &&
            const DeepCollectionEquality()
                .equals(other.totalAmount, totalAmount) &&
            const DeepCollectionEquality()
                .equals(other.advanceAmount, advanceAmount) &&
            const DeepCollectionEquality()
                .equals(other.expectedPassdate, expectedPassdate) &&
            const DeepCollectionEquality()
                .equals(other.acutalPassdate, acutalPassdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(carId),
      const DeepCollectionEquality().hash(buyerId),
      const DeepCollectionEquality().hash(totalAmount),
      const DeepCollectionEquality().hash(advanceAmount),
      const DeepCollectionEquality().hash(expectedPassdate),
      const DeepCollectionEquality().hash(acutalPassdate));

  @JsonKey(ignore: true)
  @override
  _$$_SellCopyWith<_$_Sell> get copyWith =>
      __$$_SellCopyWithImpl<_$_Sell>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SellToJson(this);
  }
}

abstract class _Sell implements Sell {
  factory _Sell(
      {final int? id,
      required final String date,
      required final int carId,
      required final int buyerId,
      required final int totalAmount,
      final int advanceAmount,
      required final String expectedPassdate,
      final String? acutalPassdate}) = _$_Sell;

  factory _Sell.fromJson(Map<String, dynamic> json) = _$_Sell.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get carId => throw _privateConstructorUsedError;
  @override
  int get buyerId => throw _privateConstructorUsedError;
  @override
  int get totalAmount => throw _privateConstructorUsedError;
  @override
  int get advanceAmount => throw _privateConstructorUsedError;
  @override
  String get expectedPassdate => throw _privateConstructorUsedError;
  @override
  String? get acutalPassdate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SellCopyWith<_$_Sell> get copyWith => throw _privateConstructorUsedError;
}
