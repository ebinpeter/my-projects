import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/hivelog/Model_user/Modelusr.dart';

import 'package:flutter_application_2/hivelog/Screen/Login.dart';
import 'package:flutter_application_2/hivelog/database/dbFun.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Regpage extends StatelessWidget {
  final pass = TextEditingController();
  final email = TextEditingController();
  final name = TextEditingController();

  void validatorSing() async {
    final mail = email.text.trim();
    final pwd = pass.text.trim();

    final emailvadidato = EmailValidator.validate(mail);
    if (mail != "" && pwd != "") {
      if (emailvadidato == true) {
        final passvalidator = checkPassword(pwd);
        if (passvalidator == true) {
          final user = User(email: mail, password: pwd);
          await DataBase.instancec.userSingUp(user);
          Get.back();
          Get.snackbar("success", "Account Created");
        }
      } else {
        Get.snackbar("error", "Please provide valid email",
            colorText: Colors.green);
      }
    } else {
      Get.snackbar('Error', 'feild cannot be empty', colorText: Colors.red);
    }
  }

  checkPassword(String pwd) {
    if (pwd.length < 6) {
      Get.snackbar("Error", "Password length shuld be greator than 6");
    } else {
      return true;
    }
  }

  void validateSignup(List<User> userlist) async {
    final mail = email.text.trim();
    final pwd = pass.text.trim();
    bool isUserFound = false;
    final EmailValidation = EmailValidator.validate(mail);
    if (mail != "" && pwd != "") {
      if (EmailValidation == true) {
        //check user is already registor
        await Future.forEach(userlist, (users) {
          if (users.email == mail) {
            isUserFound = true;
          } else
            isUserFound = false;
        });
        if (isUserFound == true) {
          Get.snackbar('Error', 'Account Creator');
        }
      }
    } else {
      Get.snackbar('error', 'please provide valid email',
          colorText: Colors.red);

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
              controller: name, decoration: InputDecoration(hintText: 'name')),
          SizedBox(
            height: 30,
          ),
          TextField(
              controller: pass,
              decoration: InputDecoration(hintText: 'username')),
          TextField(
              controller: email,
              decoration: InputDecoration(hintText: 'password')),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {}, child: Text("Sign UP")),
          TextButton(
              onPressed: () {
                Get.to(() => Login());
              },
              child: Text("alrdy user ?"))
        ],
      ),
    );
  }
}
