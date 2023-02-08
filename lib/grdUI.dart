import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class gndui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("grid"),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
            ), itemCount: 12,
            itemBuilder: (context, index){
              return IconButton(icon :FaIcon(FontAwesomeIcons.angleDown),
                  onPressed:(){print("pressed");});

            }

        ));
  }
}
