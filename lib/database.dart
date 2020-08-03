import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:modelapp/checklist.dart';
import 'package:sqflite/sqflite.dart';

class ChecklistDatabaseProvider {
  ChecklistDatabaseProvider._();

  static final ChecklistDatabaseProvider db =ChecklistDatabaseProvider._();
  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await getDatabaseInstance();
    return _database;
  }

  Future<Database> getDatabaseInstance() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, "checklist.db");
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE Checklist ("
              "id integer primary key AUTOINCREMENT,"
              "name TEXT,"
              "ans1 TEXT,"
              "ans2 TEXT,"
              "ans3a TEXT,"
              "ans3b TEXT,"
              "ans3c TEXT,"
              "ans3d TEXT"
              ")");
        });
  }
  Future<void> insertChecklist(Checklist checklist) async {
    // Get a reference to the database.
    final Database db = await database;
    await db.insert(
      'Checklist',
      checklist.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  addChecklistToDatabase(Checklist checklist) async {
    final db = await database;
    var raw = await db.insert(
      "Checklist",
      checklist.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  updateChecklist(Checklist checklist) async {
    final db = await database;
    var response = await db.update("Checklist", checklist.toMap(),
        where: "id = ?", whereArgs: [checklist.id]);
    return response;
  }

  Future<Checklist> getChecklistWithId(int id) async {
    final db = await database;
    var response = await db.query("Checklist", where: "id = ?", whereArgs: [id]);
    return response.isNotEmpty ? Checklist.fromMap(response.first) : null;
  }

  Future<List<Checklist>> getAllChecklist() async {
    final db = await database;
    var response = await db.query("Checklist");
    List<Checklist> list = response.map((c) => Checklist.fromMap(c)).toList();
    return list;
  }

  deleteChecklistWithId(int id) async {
    final db = await database;
    return db.delete("checklist", where: "id = ?", whereArgs: [id]);
  }

  deleteAllChecklist() async {
    final db = await database;
    db.delete("Checklist");

  }}
