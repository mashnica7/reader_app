import "dart:io" as io;
import 'package:injectable/injectable.dart';
import "package:path/path.dart";
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

@lazySingleton
class MDatabase {
  static final MDatabase _instance = MDatabase.internal();

  factory MDatabase() => _instance;
  static Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  MDatabase.internal();

  /// Initialize DB
  Future<Database> initDb() async {
    final io.Directory documentDirectory =
        await getApplicationDocumentsDirectory();
    final String path = join(documentDirectory.path, "readerDatabase.db");
    final taskDb =
        await openDatabase(path, version: 1, onCreate: (db, version) {
      // Run the CREATE TABLE statement on the database.

      db.execute(
        "CREATE TABLE read_lists(name TEXT PRIMARY KEY)",
      );

      return db.execute(
        """CREATE TABLE book_list(key TEXT,
        list_name TEXT,
        title TEXT NULL,
        author_name TEXT NULL, 
        cover_i INTEGER NULL,
        first_sentence TEXT NULL, 
        publish_year TEXT NULL, 
        publisher TEXT NULL,
        is_read INTEGER,
        notes TEXT NULL,
        PRIMARY KEY(key, list_name))""",
      );
    });
    return taskDb;
  }
}
