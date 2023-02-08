
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
          home: snbardm()
        );
      }));
}


class snbardm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("yeh a snackBar"),
          action: SnackBarAction(
            label:"UNDO" ,
            onPressed: (){},
          ),));

        }, child: Text("Show Snackbar"),
      )),
    );
  }
}
