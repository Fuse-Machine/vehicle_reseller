// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sell _$$_SellFromJson(Map<String, dynamic> json) => _$_Sell(
      id: json['id'] as int?,
      date: json['date'] as String,
      carId: json['carId'] as int,
      buyerId: json['buyerId'] as int,
      totalAmount: json['totalAmount'] as int,
      advanceAmount: json['advanceAmount'] as int? ?? 0,
      expectedPassdate: json['expectedPassdate'] as String,
      acutalPassdate: json['acutalPassdate'] as String?,
    );

Map<String, dynamic> _$$_SellToJson(_$_Sell instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'carId': instance.carId,
      'buyerId': instance.buyerId,
      'totalAmount': instance.totalAmount,
      'advanceAmount': instance.advanceAmount,
      'expectedPassdate': instance.expectedPassdate,
      'acutalPassdate': instance.acutalPassdate,
    };
