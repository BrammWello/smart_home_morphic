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
                  // Row(
                  //   children: <Widget>[
                  //     Container(
                  //       child: Neumorphic(
                  //         style: NeumorphicStyle(
                  //             shape: NeumorphicShape.flat,
                  //             boxShape: NeumorphicBoxShape.circle(),
                  //             depth: 8,
                  //             color: kBackgroundColor),
                  //         child: Image(
                  //           height: kDefaultPadding * 2,
                  //           width: kDefaultPadding * 2,
                  //           image: AssetImage('assets/images/bramm.png'),
                  //         ),
                  //       ),
                  //     ),
                  //     Spacer(),
                  // NeumorphicButton(
                  //   onPressed: () {
                  //     print("onClick");
                  //   },
                  //   style: NeumorphicStyle(
                  //     color: kBackgroundColor,
                  //     shape: NeumorphicShape.flat,
                  //     boxShape: NeumorphicBoxShape.circle(),
                  //   ),
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Icon(
                  //     Icons.lock_open,
                  //     color: kTextColor,
                  //   ),
                  // ),
                  //   ],
                  // ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sitting Room",
                            style: TextStyle(
                                fontSize: kDefaultPadding * 2,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "4 connected devices",
                            style: TextStyle(
                              fontSize: kDefaultPadding * .8,
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                      Spacer(),
                      NeumorphicButton(
                        onPressed: () {
                          print("onClick");
                        },
                        style: NeumorphicStyle(
                          color: kBackgroundColor,
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(12)),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.thermostat_outlined,
                              color: Colors.cyan,
                              size: 16,
                            ),
                            Text("24C")
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SittingRoom()));
                        },
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(5)),
                            depth: 8,
                            color: kBackgroundColor,
                          ),
                          child: Container(
                            width: size.height * .9,
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        transform: Matrix4.translationValues(
                                            -30.0, 0.0, 0.0),
                                        child: Image(
                                          image: AssetImage(
                                              'assets/images/tcl_tv.png'),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Text(
                                          "Living Room TV",
                                          style: TextStyle(
                                            fontSize: kDefaultPadding,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Currently Playing: Macarena",
                                          style: TextStyle(
                                            fontSize: kDefaultPadding * .7,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "100% Volume",
                                          style: TextStyle(
                                            fontSize: kDefaultPadding * .7,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Neumorphic(
                                          style: NeumorphicStyle(
                                            shape: NeumorphicShape.flat,
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(5)),
                                            depth: 8,
                                            color: kBackgroundColor,
                                          ),
                                          child: Row(
                                            children: [
                                              NeumorphicButton(
                                                onPressed: () {
                                                  print("onClick");
                                                },
                                                style: NeumorphicStyle(
                                                  color: kBackgroundColor,
                                                  shape: NeumorphicShape.flat,
                                                  boxShape: NeumorphicBoxShape
                                                      .roundRect(
                                                    BorderRadius.circular(12),
                                                  ),
                                                ),
                                                padding:
                                                    const EdgeInsets.all(12.0),
                                                child: Icon(
                                                  Icons.lock_open,
                                                  color: kTextColor,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
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
