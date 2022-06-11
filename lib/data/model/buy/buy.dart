import 'package:freezed_annotation/freezed_annotation.dart';

part 'buy.freezed.dart';
part 'buy.g.dart';

@freezed
class Buy with _$Buy {
  factory Buy({
    int? id,
    required String date,
    required int carId,
    required int sellerId,
    required int totalAmount,
    @Default(0) int advanceAmount,
    required String expectedPassdate,
    String? actualPassdate,
  }) = _Buy;

  factory Buy.fromJson(Map<String, dynamic> json) => _$BuyFromJson(json);
}
