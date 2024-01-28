import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // singleton pattern
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper databaseHelper =
      DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    // database create
    Directory directory = await getApplicationDocumentsDirectory();
    _database = await openDatabase(directory.path + '/myDatabase.db',
        version: 1, onCreate: _onCreate);
    return _database;
  }

  _onCreate(Database db, int version) {
    db.execute('''
      CREATE TABLE Student (
      id INTEGER PRIMARY KEY,
      name TEXT
      )
      ''');
  }

}
