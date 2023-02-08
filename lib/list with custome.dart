import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) {
        return MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            home: lstcustom());
      }));
}

class lstcustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        childrenDelegate: SliverChildListDelegate(
          List.generate(30, (index) {
            return Card(
              color: Colors.amber,
              child: Text("card1"),
            );//[
          })
          // Card(
          //   child: Text("Card 2"),
          //   color: Colors.amber,
          // ),
          // Card(
          //   child: Text("Card 2"),
          //   color: Colors.amber,
          // ),
          // Card(
          //   child: Text("Card 2"),
          //   color: Colors.amber,
          // ),
          // Card(
          //   child: Text("Card 2"),
          //   color: Colors.amber,
          // ),
          // Card(
          //   child: Text("Card 2"),
          //   color: Colors.amber,
          // )
        //]
    ),
      ),
    );
  }
}
