import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class standeredview extends StatelessWidget{
  var image=[""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Standered")),
      body:  SingleChildScrollView(child: StaggeredGrid.count(crossAxisCount: 4,mainAxisSpacing:4 ,crossAxisSpacing: 4,children: [
        StaggeredGridTile.count(crossAxisCellCount:2, mainAxisCellCount: 3, child: Card(color: Colors.amber,)),
        StaggeredGridTile.count(crossAxisCellCount: 4, mainAxisCellCount: 5, child: Card(color: Colors.blue,)),
         StaggeredGridTile.count(crossAxisCellCount:5, mainAxisCellCount: 6, child: Card(color: Colors.purpleAccent,)),
          StaggeredGridTile.count(crossAxisCellCount:6, mainAxisCellCount: 3, child: Card(color: Colors.brown,)),
           StaggeredGridTile.count(crossAxisCellCount:3, mainAxisCellCount: 2, child: Card(color: Colors.redAccent,)),

        
      ],)),
    );
  }

}