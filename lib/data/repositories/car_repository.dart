import 'package:vehicle_reseller/data/datasource/local/vehicle_reseller_database.dart';

import '../model/car/car.dart';

class CarRepository {
  Future<int> insert(Car car) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.insert('car', car.toJson());
  }

  Future<int> update(Car car) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db
        .update('car', car.toJson(), where: 'id=?', whereArgs: [car.id]);
  }

  Future<int> delete(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.delete('car'); //, where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Car>?> getAll() async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('car');
    if (result.isNotEmpty) {
      return result.map((json) => Car.fromJson(json)).toList();
    }
    return null;
  }

  Future<Car?> getOne(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('car', where: 'id = ?', whereArgs: [id]);
    if (result.isNotEmpty) {
      return Car.fromJson(result.first);
    }
    return null;
  }

  Future<int> getCar(String uniqueKey) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result =
        await db.query('car', where: 'numberPlate = ?', whereArgs: [uniqueKey]);
    if (result.isNotEmpty) {
      var car = Car.fromJson(result.first);

      return car.id!;
    }
    return 0;
  }

  Future<int> getTotal() async {
    final db = await VehicleResellerDatabase.instance.database;

    var result = await db.query('car');
    if (result.isNotEmpty) {
      return result.length;
    }
    return 0;
  }

  Future<List<Map<String, dynamic>>?> getPurchasedStatement() async {
    final db = await VehicleResellerDatabase.instance.database;
    String sql = '''
      SELECT *
      FROM buy
      JOIN car ON buy.carId = car.id
      JOIN seller ON buy.sellerId = seller.id
    ''';
    var result = await db.rawQuery(sql);
    if (result.isNotEmpty) {
      return result;
    }
    return null;
  }

  Future<List<Map<String, dynamic>>?> getSoldStatement() async {
    final db = await VehicleResellerDatabase.instance.database;
    String sql = '''
      SELECT *
      FROM sell
      JOIN buy ON sell.buyId = buy.id
      JOIN car ON buy.carId = car.id
      JOIN buyer ON buyer.id = sell.buyerId
    ''';
    var result = await db.rawQuery(sql);
    if (result.isNotEmpty) {
      return result;
    }
    return null;
  }
}
