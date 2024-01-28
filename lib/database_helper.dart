import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  // singleton pattern
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper databaseHelper =
      DatabaseHelper._privateConstructor();

}
