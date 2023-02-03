import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: contact(),
  ));
}

class contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Text(
              "My contact",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),
            ),
          ),
          Card(
            color: Colors.black26,
            child: ListTile(
              title: Text("Ebin peter"),
             // leading: CircleAvatar(
               // backgroundImage: NetworkImage(
                 //   "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
             // ),
              subtitle: Text('654565425'),
              trailing: Wrap(
                children: const [
                  Icon(Icons.message),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.phone),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.white10,
            child: ListTile(
              title: Text("Adhersh"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
              ),
              subtitle: Text("454444534"),
              trailing: Wrap(
                children: [
                  Icon(Icons.message),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.phone)
                ],
              ),
            ),
          ),
          Card(
            color: Colors.black12,
            child: ListTile(
              title: Text("Akhil"),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
              ),
              subtitle: Text("413241322"),
              trailing: Wrap(
                children: [Icon(Icons.message),
                  SizedBox(width: 20,),
                  Icon(Icons.phone)],
              ),
            ),
          )
        ],
      ),
    );
  }
}
