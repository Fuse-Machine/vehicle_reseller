// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repair _$RepairFromJson(Map<String, dynamic> json) {
  return _Repair.fromJson(json);
}

/// @nodoc
mixin _$Repair {
  int? get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get carId => throw _privateConstructorUsedError;
  String get heading => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepairCopyWith<Repair> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairCopyWith<$Res> {
  factory $RepairCopyWith(Repair value, $Res Function(Repair) then) =
      _$RepairCopyWithImpl<$Res>;
  $Res call({int? id, String date, int carId, String heading, int amount});
}

/// @nodoc
class _$RepairCopyWithImpl<$Res> implements $RepairCopyWith<$Res> {
  _$RepairCopyWithImpl(this._value, this._then);

  final Repair _value;
  // ignore: unused_field
  final $Res Function(Repair) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? carId = freezed,
    Object? heading = freezed,
    Object? amount = freezed,
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
      heading: heading == freezed
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_RepairCopyWith<$Res> implements $RepairCopyWith<$Res> {
  factory _$$_RepairCopyWith(_$_Repair value, $Res Function(_$_Repair) then) =
      __$$_RepairCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String date, int carId, String heading, int amount});
}

/// @nodoc
class __$$_RepairCopyWithImpl<$Res> extends _$RepairCopyWithImpl<$Res>
    implements _$$_RepairCopyWith<$Res> {
  __$$_RepairCopyWithImpl(_$_Repair _value, $Res Function(_$_Repair) _then)
      : super(_value, (v) => _then(v as _$_Repair));

  @override
  _$_Repair get _value => super._value as _$_Repair;

  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? carId = freezed,
    Object? heading = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_Repair(
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
      heading: heading == freezed
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repair implements _Repair {
  _$_Repair(
      {this.id,
      required this.date,
      required this.carId,
      required this.heading,
      required this.amount});

  factory _$_Repair.fromJson(Map<String, dynamic> json) =>
      _$$_RepairFromJson(json);

  @override
  final int? id;
  @override
  final String date;
  @override
  final int carId;
  @override
  final String heading;
  @override
  final int amount;

  @override
  String toString() {
    return 'Repair(id: $id, date: $date, carId: $carId, heading: $heading, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repair &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.carId, carId) &&
            const DeepCollectionEquality().equals(other.heading, heading) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(carId),
      const DeepCollectionEquality().hash(heading),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$$_RepairCopyWith<_$_Repair> get copyWith =>
      __$$_RepairCopyWithImpl<_$_Repair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepairToJson(this);
  }
}

abstract class _Repair implements Repair {
  factory _Repair(
      {final int? id,
      required final String date,
      required final int carId,
      required final String heading,
      required final int amount}) = _$_Repair;

  factory _Repair.fromJson(Map<String, dynamic> json) = _$_Repair.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  int get carId => throw _privateConstructorUsedError;
  @override
  String get heading => throw _privateConstructorUsedError;
  @override
  int get amount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RepairCopyWith<_$_Repair> get copyWith =>
      throw _privateConstructorUsedError;
}
