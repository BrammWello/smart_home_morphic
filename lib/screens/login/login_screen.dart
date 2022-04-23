import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home_morphic/constants.dart';
import 'package:smart_home_morphic/screens/overview/overview_screen.dart';
import 'package:smart_home_morphic/tools.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Spacer(flex: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: size.height * .1,
                width: size.width * .7,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(5)),
                      depth: 8,
                      color: kBackgroundColor),
                  child: Center(
                    child: Text(
                      'Enter Pin',
                      style: TextStyle(
                        fontSize: kDefaultPadding * 2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Spacer(flex: 3),
          Container(
            width: size.width * .7,
            child: Row(
              children: <Widget>[
                numpadNumber("7"),
                Spacer(),
                numpadNumber("8"),
                Spacer(),
                numpadNumber("9")
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            width: size.width * .7,
            child: Row(
              children: <Widget>[
                numpadNumber("4"),
                Spacer(),
                numpadNumber("5"),
                Spacer(),
                numpadNumber("6")
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            width: size.width * .7,
            child: Row(
              children: <Widget>[
                numpadNumber("1"),
                Spacer(),
                numpadNumber("2"),
                Spacer(),
                numpadNumber("3")
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            width: size.width * .7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                numpadNumber("0"),
              ],
            ),
          ),
          Spacer(flex: 1),
          Container(
            width: size.width * .7,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => OverviewScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: kDefaultPadding * 3,
                    width: kDefaultPadding * 3,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(5)),
                          depth: 8,
                          color: kBackgroundColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chevron_right,
                                color: Colors.lightBlue,
                                size: kDefaultPadding * 2,
                                semanticLabel:
                                    'Text to announce in accessibility modes',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
    );
  }
}
