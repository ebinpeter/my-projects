
import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  var data = <String>["bin ,peter,joseph"];
  var demo = <int>[122, 272, 2372, 28238];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List view with")),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext ,index){
            return Container(
              height: 100,
              color: Colors.blue,
              child: Text(data[index]),

            );

          },
        ));
  }
}
