import 'dart:developer';
import 'package:vehicle_reseller/data/datasource/local/vehicle_reseller_database.dart';
import 'package:vehicle_reseller/data/model/buy/buy.dart';
import 'package:vehicle_reseller/data/model/buyer/buyer.dart';
import 'package:vehicle_reseller/data/model/car/car.dart';
import 'package:vehicle_reseller/data/model/repair/repair.dart';
import 'package:vehicle_reseller/data/model/sell/sell.dart';
import 'package:vehicle_reseller/data/model/seller/seller.dart';
import 'package:vehicle_reseller/data/repositories/buy_repository.dart';
import 'package:vehicle_reseller/data/repositories/buyer_repository.dart';
import 'package:vehicle_reseller/data/repositories/car_repository.dart';
import 'package:vehicle_reseller/data/repositories/repair_repository.dart';
import 'package:vehicle_reseller/data/repositories/sell_repository.dart';
import 'package:vehicle_reseller/data/repositories/seller_repository.dart';

class SampleData {
  List<Car> cars = [
    Car(
        id: 1,
        numberPlate: 'ba 1 jha 1996',
        type: 'taxi',
        model: 'Maruti 800',
        color: 'white',
        year: '2004'),
    Car(
        id: 2,
        numberPlate: 'ba 10 cha 200',
        type: 'car',
        model: 'Alto',
        color: 'Grey',
        year: '2007'),
    Car(
        id: 3,
        numberPlate: 'ba 12 cha 200',
        type: 'car',
        model: 'Suzuki',
        color: 'Grey',
        year: '2010'),
    Car(
        id: 4,
        numberPlate: 'ba 1 jha 2050',
        type: 'taxi',
        model: 'Maruti 800',
        color: 'white',
        year: '2006'),
    Car(
        id: 5,
        numberPlate: 'ba 6 jha 5544',
        type: 'car',
        model: 'Maruti 800',
        color: 'white',
        year: '2004'),
    Car(
        id: 6,
        numberPlate: 'ba 2 jha 354',
        type: 'taxi',
        model: 'Alto',
        color: 'white',
        year: '2015'),
    Car(
        id: 7,
        numberPlate: 'ba 2 jha 3658',
        type: 'taxi',
        model: 'Alto',
        color: 'white',
        year: '2017')
  ];
  List<Buy> buys = [
    Buy(
        id: 1,
        date: 'Jan 1, 2021',
        carId: 1,
        sellerId: 1,
        totalAmount: 850000,
        advanceAmount: 250000,
        expectedPassdate: '14 Jan 2021',
        actualPassdate: 'Jan 14, 2021'),
    Buy(
        id: 2,
        date: 'Feb 1, 2021',
        carId: 2,
        sellerId: 2,
        totalAmount: 1250000,
        advanceAmount: 1000000,
        expectedPassdate: 'Feb 14, 2021',
        actualPassdate: 'Feb 15, 2021'),
    Buy(
        id: 3,
        date: 'Feb 14, 2021',
        carId: 3,
        sellerId: 3,
        totalAmount: 1000000,
        advanceAmount: 200000,
        expectedPassdate: 'Feb 25, 2021',
        actualPassdate: 'Feb 25, 2021'),
    Buy(
        id: 4,
        date: 'Mar 17, 2021',
        carId: 4,
        sellerId: 4,
        totalAmount: 800000,
        advanceAmount: 0,
        expectedPassdate: 'Mar 29, 2021'),
    Buy(
        id: 5,
        date: 'Nov 20, 2021',
        carId: 5,
        sellerId: 5,
        totalAmount: 750000,
        advanceAmount: 500000,
        expectedPassdate: 'Nov 28, 2021'),
    Buy(
        id: 6,
        date: 'Dec 12, 2021',
        carId: 6,
        sellerId: 6,
        totalAmount: 2200000,
        advanceAmount: 1250000,
        expectedPassdate: 'Dec 14, 2021'),
    Buy(
        id: 7,
        date: 'Jan 5, 2022',
        carId: 7,
        sellerId: 7,
        totalAmount: 2450000,
        advanceAmount: 750000,
        expectedPassdate: 'Jan 14, 2021'),
  ];
  List<Seller> sellers = [
    Seller(id: 1, name: 'Ram Chandra', phone: '9841010203'),
    Seller(id: 2, name: 'Prayas Shrestha', phone: '9803159357'),
    Seller(id: 3, name: 'Manoj Bhattarai', phone: '9851014569'),
    Seller(id: 4, name: 'Sriram Paudel', phone: '9851234125'),
    Seller(id: 5, name: 'Mijal Sharma', phone: '9841753025'),
    Seller(id: 6, name: 'Anil Kc', phone: '9803032514'),
    Seller(id: 7, name: 'Prajwol Manandhar', phone: '9841523214'),
  ];
  List<Buyer> buyers = [
    Buyer(id: 1, name: 'Kusal Rajbhandari', phone: '9874152312'),
    Buyer(id: 2, name: 'Sammit Man Shrestha', phone: '9851045123'),
    Buyer(id: 3, name: 'Anish Joshi', phone: '9803142530'),
    Buyer(id: 4, name: 'Suraj Pathak', phone: '9872142536'),
  ];
  List<Sell> sells = [
    Sell(
        id: 1,
        date: 'Feb 22, 2021',
        buyerId: 1,
        buyId: 1,
        totalAmount: 975000,
        advanceAmount: 475000,
        expectedPassdate: 'Feb 27, 2021'),
    Sell(
        id: 2,
        date: 'Mar 25, 2021',
        buyerId: 2,
        buyId: 2,
        totalAmount: 1150000,
        advanceAmount: 650000,
        expectedPassdate: 'Mar 30, 2021'),
    Sell(
        id: 3,
        date: 'Mar 14, 2021',
        buyerId: 3,
        buyId: 3,
        totalAmount: 1050000,
        advanceAmount: 550000,
        expectedPassdate: '24 Mar 2021',
        actualPassdate: 'Mar 24, 2021'),
    Sell(
        id: 4,
        date: 'Mar 23, 2021',
        buyerId: 4,
        buyId: 4,
        totalAmount: 900000,
        advanceAmount: 450000,
        expectedPassdate: 'Apr 1, 2021')
  ];
  List<Repair> repairs = [
    Repair(
        id: 1,
        date: '1 Jan 2021',
        carId: 1,
        heading: 'Headlight',
        amount: 4500),
    Repair(
        id: 2,
        date: '1 Jan 2021',
        carId: 1,
        heading: 'Backlight',
        amount: 4000),
    Repair(
        id: 3, date: '2 Feb 2021', carId: 2, heading: 'Denting', amount: 3500),
    Repair(
        id: 4,
        date: '2 Feb 2021',
        carId: 2,
        heading: 'Battery Change',
        amount: 7500),
    Repair(
        id: 5,
        date: '5 Jan 2022',
        carId: 6,
        heading: 'Battery Change',
        amount: 7500),
    Repair(
        id: 6,
        date: '21 Nov 2021',
        carId: 5,
        heading: 'Looking Glass Change',
        amount: 17850),
  ];

  Future<int> populateDatabase() async {
    try {
      //final db = await VehicleResellerDatabase.instance.database;
      for (var car in cars) {
        var res = await CarRepository().insert(car);
        if (res <= 0) {
          log(res.toString());
          return 0;
        }
      }
      for (var buy in buys) {
        var res = await BuyRepository().insert(buy);
        if (res <= 0) {
          log(res.toString());
          return 0;
        }
      }
      for (var sell in sells) {
        var res = await SellRepository().insert(sell);
        if (res <= 0) {
          log(res.toString());
          return 0;
        }
      }
      for (var buyer in buyers) {
        var res = await BuyerRepository().insert(buyer);
        if (res <= 0) {
          log(res.toString());
          return 0;
        }
      }
      for (var seller in sellers) {
        var res = await SellerRepository().insert(seller);
        if (res <= 0) {
          log(res.toString());
          return 0;
        }
      }
      for (var repair in repairs) {
        var res = await RepairRepository().insert(repair);
        if (res <= 0) {
          log(res.toString());
          return 0;
        }
      }
      return 1;
    } catch (error) {
      log(error.toString());
    }
    return 0;
  }

  Future<void> displayAllData() async {
    List<Car>? cars = await CarRepository().getAll();
    List<Buy>? buys = await BuyRepository().getAll();
    List<Seller>? sellers = await SellerRepository().getAll();
    List<Buyer>? buyers = await BuyerRepository().getAll();
    List<Sell>? sells = await SellRepository().getAll();
    List<Repair>? repairs = await RepairRepository().getAll();

    log(cars.toString());
    log(buys.toString());
    log(sellers.toString());
    log(buyers.toString());
    log(sells.toString());
    log(repairs.toString());
  }

  void delete() {
    deleteTable('car');
    deleteTable('buy');
    deleteTable('seller');
    deleteTable('buyer');
    deleteTable('sell');
    deleteTable('repair');
  }

  Future<void> deleteTable(String table) async {
    final db = await VehicleResellerDatabase.instance.database;
    db.delete(table);
  }
}
