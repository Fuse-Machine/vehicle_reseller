import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class VehicleResellerDatabase {
  static final VehicleResellerDatabase instance =
      VehicleResellerDatabase._init();
  static Database? _database;
  VehicleResellerDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'vehicle_reseller5.db');

    return await openDatabase(path, version: 1, onCreate: _createTables);
  }

  Future _createTables(Database db, int version) async {
    await db.execute("CREATE TABLE car ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "numberPlate TEXT UNIQUE,"
        "type TEXT,"
        "model TEXT,"
        "color TEXT,"
        "year TEXT"
        ")");

    await db.execute("CREATE TABLE buyer ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "name TEXT,"
        "phone TEXT UNIQUE"
        ")");

    await db.execute("CREATE TABLE seller ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "name TEXT,"
        "phone TEXT UNIQUE"
        ")");

    await db.execute("CREATE TABLE buy("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "date TEXT,"
        "carId INTEGER UNIQUE,"
        "sellerId INTEGER UNIQUE,"
        "totalAmount INTEGER,"
        "advanceAmount INTEGER,"
        "expectedPassdate TEXT,"
        "actualPassdate TEXT,"
        "FOREIGN KEY (carId) REFERENCES car (id) ON DELETE NO ACTION ON UPDATE NO ACTION,"
        "FOREIGN KEY (sellerId) REFERENCES seller (id) ON DELETE NO ACTION ON UPDATE NO ACTION"
        ")");

    await db.execute("CREATE TABLE sell("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "date TEXT,"
        "buyerId INTEGER UNIQUE,"
        "buyId INTEGER UNIQUE,"
        "totalAmount INTEGER,"
        "advanceAmount INTEGER,"
        "expectedPassdate TEXT,"
        "actualPassdate TEXT,"
        "FOREIGN KEY (buyerId) REFERENCES buyer (id) ON DELETE NO ACTION ON UPDATE NO ACTION,"
        "FOREIGN KEY (buyId) REFERENCES buyer (id) ON DELETE NO ACTION ON UPDATE NO ACTION"
        ")");

    await db.execute("CREATE TABLE repair ("
        "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        "date TEXT,"
        "carId INTEGER,"
        "heading TEXT,"
        "amount INTEGER,"
        "FOREIGN KEY (carID) REFERENCES car (id) ON DELETE NO ACTION ON UPDATE NO ACTION"
        ")");
  }

  Future<bool> checkDatabaseExist() {
    var res = databaseFactory.databaseExists('vehicle_reseller.db');
    return res;
  }
}
