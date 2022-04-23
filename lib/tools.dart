import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home_morphic/constants.dart';

//login screen items
Container numpadNumber(String s) {
  return Container(
    height: kDefaultPadding * 3,
    width: kDefaultPadding * 3,
    child: Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5)),
          depth: 8,
          color: kBackgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                s,
                style: TextStyle(
                    fontSize: kDefaultPadding * 2, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

//bottom navigation
Row bottomNavigation() {
  return Row(
    children: <Widget>[
      BottomNavigationWidget(),
      Spacer(),
      NeumorphicButton(
        onPressed: () {
          print("onClick");
        },
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          color: kBackgroundColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          Icons.devices_other,
          color: kTextColor,
        ),
      ),
      Spacer(),
      NeumorphicButton(
        onPressed: () {
          print("onClick");
        },
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          color: kBackgroundColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          Icons.mic,
          color: Colors.red,
        ),
      ),
      Spacer(),
      NeumorphicButton(
        onPressed: () {
          print("onClick");
        },
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          color: kBackgroundColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          Icons.notifications,
          color: kTextColor,
        ),
      ),
      Spacer(),
      NeumorphicButton(
        onPressed: () {
          print("onClick");
        },
        style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          color: kBackgroundColor,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        ),
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          Icons.person,
          color: kTextColor,
        ),
      ),
    ],
  );
}

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: () {
        print("onClick");
      },
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        color: kBackgroundColor,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      ),
      padding: const EdgeInsets.all(12.0),
      child: Icon(
        Icons.house,
        color: kTextColor,
      ),
    );
  }
}
