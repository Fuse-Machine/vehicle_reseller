import 'package:freezed_annotation/freezed_annotation.dart';

part 'sell.freezed.dart';
part 'sell.g.dart';

@freezed
class Sell with _$Sell {
  factory Sell({
    int? id,
    required String date,
    required int buyerId,
    required int buyId,
    required int totalAmount,
    @Default(0) int advanceAmount,
    required String expectedPassdate,
    String? actualPassdate,
  }) = _Sell;

  factory Sell.fromJson(Map<String, dynamic> json) => _$SellFromJson(json);
}
