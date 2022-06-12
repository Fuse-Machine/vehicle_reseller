// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Car _$$_CarFromJson(Map<String, dynamic> json) => _$_Car(
      id: json['id'] as int?,
      numberPlate: json['numberPlate'] as String,
      type: json['type'] ?? 'Taxi',
      model: json['model'] as String?,
      color: json['color'] as String?,
      year: json['year'] as String?,
    );

Map<String, dynamic> _$$_CarToJson(_$_Car instance) => <String, dynamic>{
      'id': instance.id,
      'numberPlate': instance.numberPlate,
      'type': instance.type,
      'model': instance.model,
      'color': instance.color,
      'year': instance.year,
    };
