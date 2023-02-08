import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class phone extends StatelessWidget {
  var models = <String>["Iphone 11", 'iphone 12', "Iphone 12pro", "Iphone 13"];
  var price =<int> [993, 899, 799, 699];



  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Tech Shop"),
        ),
        body:ListView.builder(itemCount: models.length,itemBuilder: (BuildContext,index){
          return Card(
            child: ListTile(
              leading: Container(
                child: Image(image: NetworkImage(""),)
              ),
            ),
          );
        }));
  }
}
