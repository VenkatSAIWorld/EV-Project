//import 'package:sqlite3/sqlite3.dart';
import 'package:ev_project/user_signup_class/signup_class.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class EvDataBase {
  static final EvDataBase instance = EvDataBase._init();

  static Database? _database;

  EvDataBase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB("signup.db");
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = "INTEGER PRIMARY KEY AUTOINCREMENT";
    final textType = "TEXT NOT NULL";
    final boolType = "BOOLEAN NOT NULL";
    final integerType = "INTEGER NOT NULL";

    await db.execute('''
CREATE TABLE $tableSignUp(
  ${SignUpFields.id} $idType,
  ${SignUpFields.userName} $textType,
  ${SignUpFields.email} $textType,
  ${SignUpFields.password} $textType,
  ${SignUpFields.mobileNumber} $integerType
)
''');
  }

  Future<SignUp> create(SignUp signup) async {
    final db = await instance.database;

    final id = await db.insert(tableSignUp, signup.toJson());
    return signup.copy(id: id);
  }

  Future<SignUp> readNote(int id) async {
    final db = await instance.database;
    final maps = await db.query(tableSignUp,
        columns: SignUpFields.values,
        where: '${SignUpFields.id}=?',
        whereArgs: [id]);

    if (maps.isNotEmpty) {
      return SignUp.fromJson(maps.first);
    }
    throw Exception('ID $id not found');
  }

  Future<List<SignUp>> readAllSignUp() async {
    final db = await instance.database;
    final orderBy = '${SignUpFields.id} ASC';
    final result = await db.query(tableSignUp, orderBy: orderBy);
    return result.map((json) => SignUp.fromJson(json)).toList();
  }

  Future<int> update(SignUp signup) async {
    final db = await instance.database;

    return db.update(tableSignUp, signup.toJson(),
        where: '${SignUpFields.id}=?', whereArgs: [signup.id]);
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db
        .delete(tableSignUp, where: '${SignUpFields.id}=?', whereArgs: [id]);
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
