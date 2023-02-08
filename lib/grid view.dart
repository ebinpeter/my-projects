import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grdviw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View"),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 70,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 1.0),
          children: List.generate(10, (index) {
            return const Card(
                child: Center(
              child: Image(
                  image: NetworkImage(
                      "https://cdn-icons-png.flaticon.com/512/246/246163.png")),
            ));
          })),
    );
  }
}
