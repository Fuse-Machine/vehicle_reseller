
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';

@freezed
class Car with _$Car {
  factory Car({
    int? id,
    required String numberPlate,
    @Default('Taxi') type,
    String? model,
    String? color,
    String? year,
  }) = _Car;
	
  factory Car.fromJson(Map<String, dynamic> json) =>
			_$CarFromJson(json);
}
