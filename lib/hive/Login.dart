import 'package:flutter/material.dart';
import 'package:flutter_application_2/hivelog/Model_user/Modelusr.dart';
import 'package:flutter_application_2/hivelog/Screen/home.dart';
import 'package:flutter_application_2/hivelog/Screen/signup.dart';
import 'package:flutter_application_2/hivelog/database/dbFun.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {}

class Login extends StatelessWidget {
  final pass = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'username')),
          SizedBox(
            height: 30,
          ),
          TextField(
              controller: pass,
              decoration: InputDecoration(hintText: 'password')),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                final userlist = await DataBase.instancec.getUser();
                checkUser(userlist);
              },
              child: Text("Login")),
          TextButton(
              onPressed: () {
                Get.to(() => Regpage());
              },
              child: Text("NOt a user regiser here"))
        ],
      ),
    );
  }

  Future<void> checkUser(List<User> userlist) async {
    final mail = email.text.trim();
    final pwd = pass.text.trim();

    bool isUserFound = false;
    final validateEmpty = await ValidateLogin(mail, pwd);
    if (validateEmpty == true) {
      await Future.forEach(userlist, (users) {
        if (users.email == mail && users.password == pwd) {
          isUserFound = true;
        } else {
          isUserFound = false;
        }
      });
      if (isUserFound == true) {
        Get.offAll(() => Home(
              email: mail,
            ));
      }
    }

   
  }
   Future<bool> ValidateLogin(String mail, String pwd) async {
      if (mail != "" && pwd != '') {
        return true;
      } else {
        Get.snackbar('Error', 'Feild must not be empty');
        return false;
      }
    }
}
