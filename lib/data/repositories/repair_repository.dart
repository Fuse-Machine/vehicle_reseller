import 'package:vehicle_reseller/data/datasource/local/vehicle_reseller_database.dart';
import 'package:vehicle_reseller/data/model/repair/repair.dart';

class RepairRepository {
  Future<int> insert(Repair repair) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.insert('repair', repair.toJson());
  }

  Future<int> update(Repair repair) async {
    final db = await VehicleResellerDatabase.instance.database;
    return db.update('repair', repair.toJson(),
        where: 'id=?', whereArgs: [repair.id]);
  }

  Future<int> delete(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.delete('repair', where: 'id=?', whereArgs: [id]);
  }

  Future<List<Repair>?> getAll() async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('repair');
    if (result.isNotEmpty) {
      return result.map((json) => Repair.fromJson(json)).toList();
    }
    return null;
  }

  Future<Repair?> getOne(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('car');
    if (result.isNotEmpty) {
      return Repair.fromJson(result.first);
    }
    return null;
  }

  Future<List<Repair>?> getAllRepairByCarId(int carId) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('repair', where: 'carId=?', whereArgs: [carId]);
    if (result.isNotEmpty) {
      return result.map((json) => Repair.fromJson(json)).toList();
    }
    return null;
  }
}
