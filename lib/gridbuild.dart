import 'package:flutter/material.dart';

class grfbld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid view build"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          itemCount: 40,
          itemBuilder: (context, index) {
            return Image(
                image: NetworkImage(
                    "https://cdn4.iconfinder.com/data/icons/miu-black-social-2/60/instagram-512.png"));
          }),
    );
  }
}
