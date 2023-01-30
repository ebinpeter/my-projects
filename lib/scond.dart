import 'package:flutter/material.dart';
import 'package:login/signup.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: const Text(
          'FoxFire',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 50, color: Colors.black),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/thumb2.jpg"))),
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Text('Hello There !',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                child: Text(
                    'Automatic identity verification which enable you to verify your identity',
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
              ),
              // Image(image: AssetImage("assets/images/Login.jpg"),width: 100,height: 100,
              //),
              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: "Username or email",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: "Password",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: ElevatedButton(
                    onPressed: () {}, child:  const Text("Login")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => signup()));
                    },
                    child: const Text("Sign Up")),
              )

              // Padding(
              // padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              //child: ElevatedButton(
              //  onPressed: () {}, child: const Text("Sign Up")),
              //)
            ],
          ),
        ),
      ),
    );
  }
}
