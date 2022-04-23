import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home_morphic/constants.dart';
import 'package:smart_home_morphic/screens/login/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Br',
                style: TextStyle(fontSize: kDefaultPadding * 4),
              ),
              Container(
                height: kDefaultPadding * 2.5,
                width: kDefaultPadding * 2,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.rect(),
                      depth: 8,
                      lightSource: LightSource.top,
                      color: kBackgroundColor),
                ),
              ),
              Text(
                "mm's",
                style: TextStyle(fontSize: kDefaultPadding * 4),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'H',
                style: TextStyle(fontSize: kDefaultPadding * 4),
              ),
              Container(
                height: kDefaultPadding * 2.3,
                width: kDefaultPadding * 2.3,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 5),
                child: Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      boxShape: NeumorphicBoxShape.circle(),
                      depth: 8,
                      lightSource: LightSource.top,
                      color: kBackgroundColor),
                ),
              ),
              Text(
                'me',
                style: TextStyle(fontSize: kDefaultPadding * 4),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
