import 'package:flutter/material.dart';

class listdemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text(
              "My condact",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Card(
              color: Colors.red,
              child: ListTile(
                leading: CircleAvatar(backgroundImage:( NetworkImage("https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"))),
                title: Text("name1"),
                subtitle: Text("4123131342"),
                trailing: Icon(Icons.phone),
              ))
        ],
      ),
    );
  }
}
