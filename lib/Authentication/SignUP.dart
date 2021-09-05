import 'package:flutter/material.dart';
import 'dart:math' as math;
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';

class SignUP extends StatefulWidget {
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Sign_upWidget - FRAME

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 312,
              left: 0,
              child: Container(
                  width: 414,
                  height: 584,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 0)
                    ],
                    color: Color.fromRGBO(228, 228, 228, 1),
                  ))),
          Positioned(
              top: 447,
              left: 41,
              child: Container(
                  width: 332,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 332,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Full Name',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                        ),
                                  )),
                              Positioned(
                                top: 18,
                                left: 18,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                            ]))),
                  ]))),
          Positioned(
              top: 642,
              left: 41,
              child: Container(
                  width: 332,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Password',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                              fontFamily: 'Roboto',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                    Positioned(
                      top: 12,
                      left: 14.34567928314209,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 16,
                      left: 282.8148193359375,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
              top: 10,
              left: 30,
              child: Container(
                  width: 371,
                  height: 21,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 371,
                            height: 21,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 287,
                                  child: Container(
                                      width: 84,
                                      height: 17.5,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                          top: 0,
                                          left: 64,
                                          child: SvgPicture.asset(
                                              'assets/images/battery.svg',
                                              semanticsLabel: 'battery'),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          child: SvgPicture.asset(
                                              'assets/images/signal.svg',
                                              semanticsLabel: 'signal'),
                                        ),
                                        Positioned(
                                          top: 0,
                                          left: 32,
                                          child: SvgPicture.asset(
                                              'assets/images/wifi.svg',
                                              semanticsLabel: 'wifi'),
                                        ),
                                      ]))),
                              Positioned(
                                  top: 1,
                                  left: 0,
                                  child: Text(
                                    '12:00',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 18,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                        ),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 715,
              left: 239,
              child: Text(
                'Login here',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
              top: 153.15182495117188,
              left: 72,
              child: Transform.rotate(
                angle: 2.689203415252547 * (math.pi / 180),
                child: Container(
                    width: 259,
                    height: 57,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            offset: Offset(0, 4),
                            blurRadius: 4)
                      ],
                      color: Color.fromRGBO(24, 153, 21, 1),
                    )),
              )),
          Positioned(
              top: 163.37979125976562,
              left: 91,
              child: Transform.rotate(
                angle: 2.690000071498558 * (math.pi / 180),
                child: Text(
                  'FalSpot',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5 /*PERCENT not supported*/
                      ),
                ),
              )),
          Positioned(
              top: 355,
              left: 49,
              child: Text(
                'Hey there,',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
              top: 546,
              left: 41,
              child: Container(
                  width: 332,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 332,
                            height: 56,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 14,
                                left: 11.857142448425293,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Text(
                                    'Email ID',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontFamily: 'Roboto',
                                        fontSize: 24,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5 /*PERCENT not supported*/
                                        ),
                                  )),
                            ]))),
                  ]))),
          Positioned(
              top: 784,
              left: 121,
              child: Container(
                  width: 155,
                  height: 44,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 155,
                            height: 44,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(24, 153, 21, 1),
                            ))),
                  ]))),
          Positioned(
              top: 787,
              left: 121,
              child: Container(
                  width: 155,
                  height: 44,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'REGISTER',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Roboto',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5 /*PERCENT not supported*/
                              ),
                        )),
                  ]))),
          Positioned(
              top: 718,
              left: 38,
              child: Text(
                'Already User?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
        ]));
  }
}
