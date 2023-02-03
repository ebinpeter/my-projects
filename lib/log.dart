import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/home.dart';

class lgnpage extends StatefulWidget {
  @override
  State<lgnpage> createState() => _lgnpageState();
}

class _lgnpageState extends State<lgnpage> {
  var formkey = GlobalKey<FormState>();
  var showpass = true;

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
                Text(
                  "Loging page",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    decoration: InputDecoration(
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
                  padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: TextFormField(
                    obscureText: showpass,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
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
                        border: OutlineInputBorder()),
                    validator: (password) {
                      if (password!.isEmpty || password!.length < 6) {
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
                    child: Text("LOGIN"))
              ],
            )));
  }
}
