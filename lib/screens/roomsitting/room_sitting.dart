import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home_morphic/constants.dart';
import 'package:smart_home_morphic/tools.dart';

class SittingRoom extends StatefulWidget {
  const SittingRoom({Key? key}) : super(key: key);

  @override
  State<SittingRoom> createState() => _SittingRoomState();
}

class _SittingRoomState extends State<SittingRoom> {
  bool _switchConcaveEnabled = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              width: size.width * .9,
              height: size.height * .9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              shape: NeumorphicShape.flat,
                              boxShape: NeumorphicBoxShape.circle(),
                              depth: 8,
                              color: kBackgroundColor),
                          child: Image(
                            height: kDefaultPadding * 2,
                            width: kDefaultPadding * 2,
                            image: AssetImage('assets/images/bramm.png'),
                          ),
                        ),
                      ),
                      Spacer(),
                      NeumorphicButton(
                        onPressed: () {
                          print("onClick");
                        },
                        style: NeumorphicStyle(
                          color: kBackgroundColor,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.circle(),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(
                          Icons.lock_open,
                          color: kTextColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding * .5,
              ),
              height: size.height * .1,
              child: bottomNavigation(),
            ),
          ],
        ),
      ),
    );
  }
}
