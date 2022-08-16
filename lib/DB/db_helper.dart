import 'dart:developer';

import 'package:calories/DB/playerModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper{
  DbHelper._();
  static DbHelper dbHelper = DbHelper._();
  static const String TableName = 'players';
  static const String IdColumName = 'id';
  static const String NameColumName = 'name';
  static const String AddressColumName = 'address';
  static const String PhoneColumName = 'phone';
  static const String AgeColumName = 'age';
  static const String HeightColumName = 'height';
  static const String WeightColumName = 'weight';
  static const String CalDayColumName = 'calDay';
  Database? database;
  initDatabase()async{
    database = await createConnectionWithDatabase();
  }
  Future<Database> createConnectionWithDatabase()async{
    String databasePath = await getDatabasesPath();
    String databaseName = 'Player.db';
    String fullPath = join ( databasePath , databaseName);
    Database database = await openDatabase(fullPath,version: 1,onCreate: (db,i){
      log('create table');
      db.execute('''
      CREATE TABLE $TableName (
      $IdColumName INTEGER PRIMARY KEY AUTOINCREMENT,
      $NameColumName TEXT,
      $AddressColumName TEXT,
      $AgeColumName TEXT,
      $HeightColumName TEXT,
      $WeightColumName TEXT,
      $CalDayColumName TEXT,
      $PhoneColumName TEXT)
      ''');
    },onOpen: (db){
      log('hello , open DB');
    });
    return database;
  }

  insertNewTask(PlayerModel playerModel)async{
    int rowIndex = await database!.insert(TableName, playerModel.toMap());
    log(rowIndex.toString());

  }
  
  Future<List<PlayerModel>> selectAllTask()async{
    List<Map<String,Object?>> rowsAsMap = await database!.query(TableName);
    List<PlayerModel> players=  rowsAsMap.map((e) => PlayerModel.fromMap(e)).toList();

    return players;

  }

  selectOneTask(int id) {
    database!.query(TableName,
        where: '$IdColumName=?', // $IdColumName=? & $NameColumName=?
        whereArgs: [id]); //[id,name]
  }

  updateOneTask(PlayerModel playerModel) async {

    int count = await database!.update(TableName, playerModel.toMap(),
        where: '$IdColumName=?', whereArgs: [playerModel.id]);
    log(count.toString());
  }
  deleteOneTask(int id) {
    database!.delete(TableName, where: '$IdColumName=?', whereArgs: [id]);
  }
  
}