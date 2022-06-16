import 'package:vehicle_reseller/data/datasource/local/vehicle_reseller_database.dart';
import 'package:vehicle_reseller/data/model/buy/buy.dart';

class BuyRepository {
  Future<int> insert(Buy buy) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.insert('buy', buy.toJson());
  }

  Future<int> update(Buy buy) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db
        .update('buy', buy.toJson(), where: 'id=?', whereArgs: [buy.id]);
  }

  Future<int> delete(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.delete('buy', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Buy>?> getAll() async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('buy');
    if (result.isNotEmpty) {
      return result.map((json) => Buy.fromJson(json)).toList();
    }
    return null;
  }

  Future<Buy?> getOne(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('buy');
    if (result.isNotEmpty) {
      return Buy.fromJson(result.first);
    }
    return null;
  }

  Future<Buy?> getBought() async {
    final db = await VehicleResellerDatabase.instance.database;
    String sql = '''
      SELECT * FROM buy
      JOIN seller  ON buy.sellerId = seller.id
      JOIN car ON buy.carId = car.id
    ''';
    var result = await db.query(sql);
    if (result.isNotEmpty) {
      return Buy.fromJson(result.first);
    }
    return null;
  }
}
