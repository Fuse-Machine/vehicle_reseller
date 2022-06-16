import 'package:vehicle_reseller/data/model/buyer/buyer.dart';

import '../datasource/local/vehicle_reseller_database.dart';

class BuyerRepository {
  Future<int> insert(Buyer buyer) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.insert('buyer', buyer.toJson());
  }

  Future<int> update(Buyer buyer) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db
        .update('buyer', buyer.toJson(), where: 'id=?', whereArgs: [buyer.id]);
  }

  Future<int> delete(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.delete('buyer', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Buyer>?> getAll() async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('buyer');
    if (result.isNotEmpty) {
      return result.map((json) => Buyer.fromJson(json)).toList();
    }
    return null;
  }

  Future<Buyer?> getOne(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('buyer');
    if (result.isNotEmpty) {
      return Buyer.fromJson(result.first);
    }
    return null;
  }
}
