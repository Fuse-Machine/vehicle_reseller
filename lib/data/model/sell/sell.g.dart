// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'sell.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sell _$$_SellFromJson(Map<String, dynamic> json) => _$_Sell(
      id: json['id'] as int?,
      date: json['date'] as String,
      buyerId: json['buyerId'] as int,
      buyId: json['buyId'] as int,
      totalAmount: json['totalAmount'] as int,
      advanceAmount: json['advanceAmount'] as int? ?? 0,
      expectedPassdate: json['expectedPassdate'] as String,
      actualPassdate: json['actualPassdate'] as String?,
    );

Map<String, dynamic> _$$_SellToJson(_$_Sell instance) => <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'buyerId': instance.buyerId,
      'buyId': instance.buyId,
      'totalAmount': instance.totalAmount,
      'advanceAmount': instance.advanceAmount,
      'expectedPassdate': instance.expectedPassdate,
      'actualPassdate': instance.actualPassdate,
    };
