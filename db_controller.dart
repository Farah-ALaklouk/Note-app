import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static final DBProvider _instance = DBProvider._internal();
  late final Database _database;

  factory DBProvider() {
    return _instance;
  }

  DBProvider._internal();

  Database get database => _database;

  Future<void> initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app_database.sql');
    _database = await openDatabase(
      path,
      version: 1,
      onOpen: (Database db) {},
      onCreate: (Database db, int version) async {
        await db.execute('CREATE TABLE note('
            'id INTEGER PRIMARY KEY AUTOINCREMENT,'
            'title TEXT,'
            'description TEXT,'
            'color INTEGER'
            ')');
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) {},
      onDowngrade: (Database db, int oldVersion, int newVersion) {},
    );
  }
}

















































//import 'package:path/path.dart';
//import 'package:sqflite/sqflite.dart';

//class SqlDb{

//static Database? _db;                          //عرفت متغير ثابت  عشان ما يتكرر الانيشيل
//Future<Database?> get db async{
 // if (_db == null){               
 //   _db = await initalDb();
   // return _db;
 // }else{
 //   return _db;
//  }

//}


//initalDb() async {


//String databasepath = await getDatabasesPath(); //موقع افتراضي للداتا
//String path = join(databasepath ,'farah.db');
//Database mydb = await openDatabase(path , onCreate:_onCreate , version: 2, onUpgrade: _onUpgrade);
//return mydb;
//}// بدها مسار و فنكشن انشاء الداتا بيس

//_onUpgrade(Database db , int oldversion , int newversion){

//print("onUpgrade =================");

//}

//_onCreate(Database db , int version)async{
  //await db.execute('''
//GREATE TABLE "notes"(
 // "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 //  "title" TEXT NOT NULL,
//  "note" TEXT NOT NULL 
//)

//''');
//print("Create DATABASE AND TABLE =================");

//}

//raedData(String sql)async{ //وظيفتها تجلب الداتا من الداتا بيس
//Database? mydb = await db; //طالما في ؟ يقبى بتفبل الnull
//List<Map> response = await mydb!.rawQuery(sql); // بياخد الاشي الي برجع من داتابيس
//return response;
//}

//insertData(String sql)async{ //وظيفتها تجلب الداتا من الداتا بيس
//Database? mydb = await db; //طالما في ؟ يقبى بتفبل الnull
//int response = await mydb!.rawInsert(sql); // بياخد الاشي الي برجع من داتابيس
//return response;
//} 

//updateData(String sql)async{ //وظيفتها تجلب الداتا من الداتا بيس
//Database? mydb = await db; //طالما في ؟ يقبى بتفبل الnull
//int response = await mydb!.rawUpdate(sql); // بياخد الاشي الي برجع من داتابيس
//return response;
//}

//deleteData(String sql)async{ //وظيفتها تجلب الداتا من الداتا بيس
//Database? mydb = await db; //طالما في ؟ يقبى بتفبل الnull
//int response = await mydb!.rawDelete(sql); // بياخد الاشي الي برجع من داتابيس
//return response;
//}


//}//