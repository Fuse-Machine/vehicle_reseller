import 'package:vehicle_reseller/data/datasource/local/vehicle_reseller_database.dart';
import 'package:vehicle_reseller/data/model/sell/sell.dart';

class SellRepository {
  Future<int> insert(Sell sell) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.insert('sell', sell.toJson());
  }

  Future<int> update(Sell sell) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db
        .update('sell', sell.toJson(), where: 'id=?', whereArgs: [sell.id]);
  }

  Future<int> delete(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.delete('sell', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Sell>?> getAll() async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('sell');
    if (result.isNotEmpty) {
      return result.map((json) => Sell.fromJson(json)).toList();
    }
    return null;
  }

  Future<Sell?> getOne(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('sell');
    if (result.isNotEmpty) {
      return Sell.fromJson(result.first);
    }
    return null;
  }

  Future<int> getTotal() async {
    final db = await VehicleResellerDatabase.instance.database;

    var result = await db.query('sell');
    if (result.isNotEmpty) {
      return result.length;
    }
    return 0;
  }
}
