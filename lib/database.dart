import 'dart:io';

import 'package:nityo_temp/component/activity/activity_entity.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static DBHelper? _dbHelper;
  static Database? _database;

  DBHelper._createObject();

  factory DBHelper() {
    if (_dbHelper == null) {
      _dbHelper = DBHelper._createObject();
    }
    return _dbHelper!;
  }

  Future<Database> initDB() async {
    Directory directory = await getApplicationSupportDirectory();
    String path = directory.path + 'aktivitas.db';

    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDB);
    return todoDatabase;
  }

  void _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE aktivitas (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        judul TEXT,
        deskripsi TEXT,
        waktu TEXT
      )
    ''');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDB();
    }

    return _database!;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var mapList = await db.query('aktivitas', orderBy: 'id');
    return mapList;
  }

  Future<int> insert(ActivityEntity data) async {
    Database db = await this.database;
    int count = await db.insert('aktivitas', data.toJson());
    return count;
  }

  Future<int> update(ActivityEntity data) async {
    Database db = await this.database;
    int count = await db.update('aktivitas', data.toJson(),
        where: 'id=?', whereArgs: [data.id]);
    return count;
  }

  Future<int> delete(ActivityEntity data) async {
    Database db = await this.database;
    int count =
        await db.delete('aktivitas', where: 'id=?', whereArgs: [data.id.toString()]);
    return count;
  }

  Future<List<ActivityEntity>> getAktivitasList() async {
    var list = await select();
    List<ActivityEntity> aktivitasList = [];
    for (int i = 0; i < list.length; i++) {
      aktivitasList.add(ActivityEntity.fromJson(list[i]));
    }
    return aktivitasList;
  }
}
