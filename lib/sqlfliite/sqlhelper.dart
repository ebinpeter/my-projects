
import 'package:sqflite/sqflite.dart'as sql;

class Sqlhelper {
  static Future<void> createtable(sql.Database db) async {
    await db.execute("""
    CREATE TABLE user(
    id INTEGER PRIMARY KEY AAUTOINCREMENT NOT NULL ,
    name TEXT
    email TEXT
    password TEXT)""");
  }
  static Future<sql.Database>opendb()async{
    return sql.openDatabase(
        'datauser',
        version:1,
        onCreate: (sql.Database db,int version)async{
          await createtable(db);
        }
    );
  }
  //create new user
  static Future<int> AddNewUser(String name,String email,String password)async{
    final db= await Sqlhelper.opendb();
    final data={'name':name,'email':email,'password':password};
    final id = db.insert('user', data);
    return id;
  }
  static Future<List<Map>> Checklogin(String email,String password)async{
    final db=await opendb();
    final data =await db.rawQuery(
        "SELECT * FROM user WHERE email='$email'AND pasword ='$password'");
    //print(data.toString());
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }
}
