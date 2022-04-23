import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home_morphic/constants.dart';
import 'package:smart_home_morphic/screens/roomsitting/room_sitting.dart';

class OverviewScreen extends StatefulWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  State<OverviewScreen> createState() => _OverviewScreenState();
}

class _OverviewScreenState extends State<OverviewScreen> {
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
                  Spacer(flex: 3),
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
                  Spacer(flex: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            'Hi, Bramm',
                            style: TextStyle(
                              fontSize: kDefaultPadding * 1.5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Here is your home summary',
                            style: TextStyle(fontSize: kDefaultPadding * .8),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SittingRoom()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
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
                                  SizedBox(
                                    height: kDefaultPadding * .5,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.event_seat_rounded,
                                          color: Colors.cyan,
                                          size: kDefaultPadding * 1.5,
                                          semanticLabel:
                                              'Text to announce in accessibility modes',
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                        margin: const EdgeInsets.all(8.0),
                                        width: kDefaultPadding * 2,
                                        height: kDefaultPadding * 1,
                                        child: NeumorphicSwitch(
                                          value: _switchConcaveEnabled,
                                          style: NeumorphicSwitchStyle(
                                            inactiveThumbColor:
                                                kBackgroundColor,
                                            thumbShape: NeumorphicShape
                                                .concave, // concave or flat with elevation
                                          ),
                                          onChanged: (value) {
                                            setState(() {
                                              _switchConcaveEnabled = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Livingroom',
                                              style: TextStyle(
                                                fontSize: kDefaultPadding,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: kDefaultPadding * .3,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text('6 Devices open'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: kDefaultPadding * .5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.kitchen,
                                        color: Colors.cyan,
                                        size: kDefaultPadding * 1.5,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      width: kDefaultPadding * 2,
                                      height: kDefaultPadding * 1,
                                      child: NeumorphicSwitch(
                                        value: _switchConcaveEnabled,
                                        style: NeumorphicSwitchStyle(
                                          inactiveThumbColor: kBackgroundColor,
                                          thumbShape: NeumorphicShape
                                              .concave, // concave or flat with elevation
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            _switchConcaveEnabled = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Kitchen',
                                            style: TextStyle(
                                              fontSize: kDefaultPadding,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: kDefaultPadding * .3,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text('1 Device open'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.king_bed,
                                        color: Colors.cyan,
                                        size: kDefaultPadding * 1.5,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      width: kDefaultPadding * 2,
                                      height: kDefaultPadding * 1,
                                      child: NeumorphicSwitch(
                                        value: _switchConcaveEnabled,
                                        style: NeumorphicSwitchStyle(
                                          inactiveThumbColor: kBackgroundColor,
                                          thumbShape: NeumorphicShape
                                              .concave, // concave or flat with elevation
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            _switchConcaveEnabled = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Bedroom',
                                            style: TextStyle(
                                              fontSize: kDefaultPadding,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: kDefaultPadding * .3,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text('2 Devices open'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.bathtub,
                                        color: Colors.cyan,
                                        size: kDefaultPadding * 1.5,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      width: kDefaultPadding * 2,
                                      height: kDefaultPadding * 1,
                                      child: NeumorphicSwitch(
                                        value: _switchConcaveEnabled,
                                        style: NeumorphicSwitchStyle(
                                          inactiveThumbColor: kBackgroundColor,
                                          thumbShape: NeumorphicShape
                                              .concave, // concave or flat with elevation
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            _switchConcaveEnabled = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Bathroom',
                                            style: TextStyle(
                                              fontSize: kDefaultPadding,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: kDefaultPadding * .3,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text('No Device open'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.king_bed,
                                        color: Colors.cyan,
                                        size: kDefaultPadding * 1.5,
                                        semanticLabel:
                                            'Text to announce in accessibility modes',
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      margin: const EdgeInsets.all(8.0),
                                      width: kDefaultPadding * 2,
                                      height: kDefaultPadding * 1,
                                      child: NeumorphicSwitch(
                                        value: _switchConcaveEnabled,
                                        style: NeumorphicSwitchStyle(
                                          inactiveThumbColor: kBackgroundColor,
                                          thumbShape: NeumorphicShape
                                              .concave, // concave or flat with elevation
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            _switchConcaveEnabled = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Other Rooms',
                                            style: TextStyle(
                                              fontSize: kDefaultPadding,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: kDefaultPadding * .3,
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Text('2 Devices open'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: kDefaultPadding * .5,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 3),
                  Row(
                    children: <Widget>[
                      Text('Current Temperature (Inside/Outside)'),
                      Spacer(),
                      Text('Heater On/Off'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '24.5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: kDefaultPadding * 1.5,
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: const EdgeInsets.all(8.0),
                        width: kDefaultPadding * 2,
                        height: kDefaultPadding * 1,
                        child: NeumorphicSwitch(
                          value: _switchConcaveEnabled,
                          style: NeumorphicSwitchStyle(
                            inactiveThumbColor: kBackgroundColor,
                            thumbShape: NeumorphicShape
                                .concave, // concave or flat with elevation
                          ),
                          onChanged: (value) {
                            setState(
                              () {
                                _switchConcaveEnabled = value;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
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
              child: Row(
                children: <Widget>[
                  NeumorphicButton(
                    onPressed: () {
                      print("onClick");
                    },
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      color: kBackgroundColor,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.house,
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
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
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
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
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
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
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
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.person,
                      color: kTextColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
