// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Repair _$$_RepairFromJson(Map<String, dynamic> json) => _$_Repair(
      id: json['id'] as int?,
      date: json['date'] as String,
      carId: json['carId'] as int,
      heading: json['heading'] as String,
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_RepairToJson(_$_Repair instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'carId': instance.carId,
      'heading': instance.heading,
      'amount': instance.amount,
    };
