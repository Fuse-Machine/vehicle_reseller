// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'buy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Buy _$$_BuyFromJson(Map<String, dynamic> json) => _$_Buy(
      id: json['id'] as int?,
      date: json['date'] as String,
      carId: json['carId'] as int,
      sellerId: json['sellerId'] as int,
      totalAmount: json['totalAmount'] as int,
      advanceAmount: json['advanceAmount'] as int? ?? 0,
      expectedPassdate: json['expectedPassdate'] as String,
      actualPassdate: json['actualPassdate'] as String?,
    );

Map<String, dynamic> _$$_BuyToJson(_$_Buy instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'carId': instance.carId,
      'sellerId': instance.sellerId,
      'totalAmount': instance.totalAmount,
      'advanceAmount': instance.advanceAmount,
      'expectedPassdate': instance.expectedPassdate,
      'actualPassdate': instance.actualPassdate,
    };
