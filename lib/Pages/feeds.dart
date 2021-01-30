import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:spec_app/main.dart';



class Feeds extends StatefulWidget {
  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: notCR ==false
            ? Container(
          width: 60,
          height: 60,
          child: NeumorphicFloatingActionButton(
            style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape: NeumorphicBoxShape.circle(),
                depth: 20,
                lightSource: LightSource.topLeft,
                shadowLightColor: Colors.black54,
                shadowDarkColor: Colors.orangeAccent,
                color: Colors.white
            ),
            onPressed: () {
              Navigator.pushNamed(context, "/addEvents");
            },
            child:Padding(
              padding: EdgeInsets.only(left: 40.0/12,top: 40.0/4),
              child: NeumorphicIcon(
                Icons.add,
                size: 40.0,
                style: NeumorphicStyle(color: Colors.orange,lightSource: LightSource.topLeft,depth:  40,shadowDarkColor: Colors.black,shadowLightColor: Colors.black38),
              ),
            ),
          ),
        ) :null
    );
  }
}
