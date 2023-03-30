import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/Sqflite/sqfliteHelper.dart';
import 'package:login/home.dart';
import 'package:login/musi.dart';
import 'package:login/regpage.dart';

class lgnpage extends StatefulWidget {
  @override
  State<lgnpage> createState() => _lgnpageState();
}

class _lgnpageState extends State<lgnpage> {
  var formkey = GlobalKey<FormState>();
  var showpass = true;
  final conemail = TextEditingController();
  final conpasswprd = TextEditingController();

  void logincheck(String email, String password) async {
    setState(() {});
    var data = await Sqlhelper.Checklogin(email, password);
  if (data.isEmpty){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Regpage()));
  }else if (data.isNotEmpty){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Musi()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login with validatiom"),
        ),
        body: Form(
            key: formkey,
            child: Column(
              children: [
                const Text(
                  "Loging page",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    controller: conemail,
                    decoration: const InputDecoration(
                        // fillColor: Colors.pink,
                        // filled: true,
                      hintText: 'email',
                        label: Text('email'),
                        prefixIcon: Icon(Icons.account_box_sharp),
                        border: OutlineInputBorder()),
                    validator: (username) {
                      if (username!.isEmpty || !username.contains('@')) {
                        return "Enter a valied email";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    controller: conpasswprd,
                    obscureText: showpass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: 'password',
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (showpass) {
                                  showpass = false;
                                } else {
                                  showpass = true;
                                }
                              });
                            },
                            icon: Icon(showpass == true
                                ? Icons.visibility_off_rounded
                                : Icons.visibility)),
                        border: const OutlineInputBorder()),
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "Not a vlied password";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        logincheck(conemail.text, conpasswprd.text);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => home()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Loging Failed",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM_LEFT,
                            //timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: const Text("LOGIN"))
              ],
            )));
  }
}
