import 'package:love_in_store/model/bank_details_model.dart';
import 'package:love_in_store/model/contact_information_model.dart';
import 'package:love_in_store/model/personal_details_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'constants.dart';

class DatabaseHelper{

  DatabaseHelper._init();
  static final DatabaseHelper _databaseHelper = DatabaseHelper._init();
  factory DatabaseHelper() => _databaseHelper;

  Database? _database;
  get database async{
    _database ??= await initDatabase();
    return _database;
  }
  initDatabase()async{
    String directoryPath = await getDatabasesPath();
    String path = join(directoryPath,'details.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }
  _onCreate(Database db, int version)async{
    return await db.execute('''
    CREATE TABLE $kPersonalDetails(
    $kDsrID TEXT PRIMARY KEY,
   $kName TEXT,
   $kDob TEXT,
   $kAnniversaryDate TEXT,
   $kFatherName TEXT,
   $kAadhaarNumber TEXT,
   $kAadhaarFrontImage TEXT,
   $kAadhaarBackImage TEXT,
   $kPanCardNumber TEXT,
   $kPanCardImage TEXT,
   $kCurrentAddress TEXT,
   $kState TEXT,
   $kCity TEXT,
   $kPinCode TEXT,
   $kEmailID TEXT,
   $kMobileNumber TEXT,
   $kLandlineNumber TEXT,
   $kEmergencyContactPerson TEXT,
   $kEmergencyContactNumber TEXT,
   $kBankName TEXT,
   $kIfscCode TEXT,
   $kAccountNumber TEXT,
   $kAccountHolderName TEXT,
   $kCancelledChequeImage TEXT
    )
    ''');
  }

  insert({String? dsrId})async{
    Database db = await database;
    return await db.rawInsert('INSERT INTO $kPersonalDetails($kDsrID) VALUES("$dsrId")');
  }
  updateIntoPersonalDetailsDB(PersonalDetailsModel details,{String? dsrId})async{
    Database db = await database;
    return await db.update(kPersonalDetails, details.toMap(),where: "$kDsrID = '$dsrId'");
  }
  updateIntoContactInformationDB(ContactInformationModel details,{String? dsrId})async{
    Database db = await database;
    return await db.update(kPersonalDetails, details.toMap(), where: "$kDsrID = '$dsrId'");
  }
  updateIntoBankDetailsDB(BankDetailsModel details,{String? dsrId})async{
    Database db = await database;
    await db.update(kPersonalDetails, details.toMap(), where: "$kDsrID = '$dsrId'");
  }

  retrieveFromDB(String? dsrId)async{
    Database db = await database;
    List data = await db.query(kPersonalDetails, where: "$kDsrID = '$dsrId'");
    if(data.isNotEmpty) {
      return PersonalDetailsModel.fromMap(data[0]);
    } else {
      return PersonalDetailsModel();
    }
  }
  retrieveFromDBContact(String? dsrId)async{
    Database db = await database;
    List data = await db.query(kPersonalDetails, where: "$kDsrID = '$dsrId'");
    if(data.isNotEmpty) {
      return ContactInformationModel.fromMap(data[0]);
    } else {
      return ContactInformationModel();
    }
  }
  retrieveFromDBBank(String? dsrId)async{
    Database db = await database;
    List data = await db.query(kPersonalDetails, where: "$kDsrID = '$dsrId'");
    if(data.isNotEmpty) {
      return BankDetailsModel.fromMap(data[0]);
    } else {
      return BankDetailsModel();
    }
  }
}