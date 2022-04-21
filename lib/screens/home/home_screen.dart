import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home_morphic/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                'Br',
                style: TextStyle(fontSize: kDefaultPadding * 4),
              ),
              Container(
                height: kDefaultPadding * 2.5,
                width: kDefaultPadding * 2,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: Colors.grey
                  ),
                ),
              ),
              Text(
                "mm's",
                style: TextStyle(fontSize: kDefaultPadding * 4),
              ),
            ],
          )
        ],
      ),
    );
  }
}
