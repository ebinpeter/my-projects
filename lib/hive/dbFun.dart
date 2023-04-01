
import 'package:hive/hive.dart';

import '../Model_user/Modelusr.dart';

class DataBase{
  DataBase._internal();
  static DataBase instancec= DataBase._internal();
  factory DataBase(){//factory constructor for creating singleton class 
    return instancec;//these classs have only onr intance
  }
  Future<void>userSingUp(User user)async{
    final db =await Hive.openBox<User>('user');
    db.put(user.id,user);
  }

 Future<List<User>> getUser()async {
  final db await Hive.openBox<User>('User');
  return db.values.loList();
 }
 }