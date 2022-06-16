import 'package:vehicle_reseller/data/datasource/local/vehicle_reseller_database.dart';
import 'package:vehicle_reseller/data/model/seller/seller.dart';

class SellerRepository {
  Future<int> insert(Seller seller) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.insert('seller', seller.toJson());
  }

  Future<int> update(Seller seller) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.update('seller', seller.toJson(),
        where: 'id=?', whereArgs: [seller.id]);
  }

  Future<int> delete(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    return await db.delete('seller', where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Seller>?> getAll() async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('seller');
    if (result.isNotEmpty) {
      return result.map((json) => Seller.fromJson(json)).toList();
    }
    return null;
  }

  Future<Seller?> getOne(int id) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result = await db.query('seller');
    if (result.isNotEmpty) {
      return Seller.fromJson(result.first);
    }
    return null;
  }

  Future<int> getSeller(String phone) async {
    final db = await VehicleResellerDatabase.instance.database;
    var result =
        await db.query('seller', where: 'phone = ?', whereArgs: [phone]);
    if (result.isNotEmpty) {
      Seller seller = Seller.fromJson(result.first);
      return seller.id!;
    }
    return 0;
  }
}
