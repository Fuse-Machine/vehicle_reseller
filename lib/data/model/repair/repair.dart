
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repair.freezed.dart';
part 'repair.g.dart';

@freezed
class Repair with _$Repair {
  factory Repair({
    int? id,
    required String date,
    required int carId,
    required String heading,
    required int amount,
  }) = _Repair;
	
  factory Repair.fromJson(Map<String, dynamic> json) =>
			_$RepairFromJson(json);
}
