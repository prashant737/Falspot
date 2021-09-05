import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator DashboardWidget - FRAME

    return Container(
        width: 406,
        height: 896,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4)
          ],
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: -21,
              left: -37,
              child: Container(
                  width: 457.20159912109375,
                  height: 333.4460144042969,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 457.20159912109375,
                            height: 333.4460144042969,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 20.790925979614258,
                                  left: 0,
                                  child: Transform.rotate(
                                    angle: 2.690000071498558 * (math.pi / 180),
                                    child: Container(
                                        width: 443,
                                        height: 313,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50),
                                            topRight: Radius.circular(50),
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50),
                                          ),
                                          color: Color.fromRGBO(24, 153, 21, 1),
                                        )),
                                  )),
                              Positioned(
                                  top: 32,
                                  left: 56,
                                  child: Container(
                                      width: 370.7704162597656,
                                      height: 20.384973526000977,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 370.7704162597656,
                                                height: 20.384973526000977,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0.4127178192138672,
                                                      left: 286.8223876953125,
                                                      child: Container(
                                                          width:
                                                              83.94802856445312,
                                                          height:
                                                              19.97225570678711,
                                                          child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                Positioned(
                                                                  top: 0,
                                                                  left:
                                                                      63.960418701171875,
                                                                  child: SvgPicture.asset(
                                                                      'assets/images/battery.svg',
                                                                      semanticsLabel:
                                                                          'battery'),
                                                                ),
                                                                Positioned(
                                                                  top: 0,
                                                                  left: 0,
                                                                  child: SvgPicture.asset(
                                                                      'assets/images/signal.svg',
                                                                      semanticsLabel:
                                                                          'signal'),
                                                                ),
                                                                Positioned(
                                                                  top: 0,
                                                                  left:
                                                                      31.980224609375,
                                                                  child: SvgPicture.asset(
                                                                      'assets/images/wifi.svg',
                                                                      semanticsLabel:
                                                                          'wifi'),
                                                                ),
                                                              ]))),
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Text(
                                                        '12:00',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    0, 0, 0, 1),
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize: 18,
                                                            letterSpacing: 0,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height:
                                                                1.5 /*PERCENT not supported*/
                                                            ),
                                                      )),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 245.96624755859375,
                                  left: 64,
                                  child: Transform.rotate(
                                    angle: 2.690000071498558 * (math.pi / 180),
                                    child: Text(
                                      'Hello Harekrishna !',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Roboto',
                                          fontSize: 25,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5 /*PERCENT not supported*/
                                          ),
                                    ),
                                  )),
                            ]))),
                    Positioned(
                      top: 99,
                      left: 240,
                      child: SvgPicture.asset('assets/images/ellipse1.svg',
                          semanticsLabel: 'ellipse1'),
                    ),
                  ]))),
          Positioned(
              top: 356,
              left: 40,
              child: Container(
                  width: 347,
                  height: 510,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 217,
                        left: 4,
                        child: Container(
                            width: 318,
                            height: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color.fromRGBO(228, 228, 228, 1),
                            ))),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 318,
                            height: 185,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color.fromRGBO(228, 228, 228, 1),
                            ))),
                    Positioned(
                        top: 435,
                        left: 112,
                        child: Container(
                            width: 94,
                            height: 75,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 14.999991416931152,
                                  left: 22.999998092651367,
                                  child: Transform.rotate(
                                    angle: -3.975693351829396e-16 *
                                        (math.pi / 180),
                                    child: SvgPicture.asset(
                                        'assets/images/vector.svg',
                                        semanticsLabel: 'vector'),
                                  )),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Transform.rotate(
                                    angle: -1.987846675914698e-16 *
                                        (math.pi / 180),
                                    child: SvgPicture.asset(
                                        'assets/images/vector.svg',
                                        semanticsLabel: 'vector'),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 7,
                        child: Container(
                            width: 58,
                            height: 64,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 7.812456130981445,
                                left: 4.53125,
                                child: SvgPicture.asset(
                                    'assets/images/vector.svg',
                                    semanticsLabel: 'vector'),
                              ),
                            ]))),
                    Positioned(
                      top: 229,
                      left: 15,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                        top: 8,
                        left: 1,
                        child: Text(
                          'V. Park',
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
                        top: 229,
                        left: 15,
                        child: Text(
                          'Prayagraj Office',
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
          Positioned(
              top: 412,
              left: 122,
              child: Transform.rotate(
                angle: 9.26942287615334e-9 * (math.pi / 180),
                child:
                    Divider(color: Color.fromRGBO(255, 0, 0, 1), thickness: 1),
              )),
          Positioned(
              top: 638,
              left: 130,
              child: Transform.rotate(
                angle: 9.26942287615334e-9 * (math.pi / 180),
                child:
                    Divider(color: Color.fromRGBO(255, 0, 0, 1), thickness: 1),
              )),
          Positioned(
              top: 430,
              left: 78,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 11,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
              top: 661,
              left: 86,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 11,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                    ),
              )),
          Positioned(
            top: 502,
            left: 175,
            child: SvgPicture.asset('assets/images/vector.svg',
                semanticsLabel: 'vector'),
          ),
          Positioned(
            top: 720,
            left: 175,
            child: SvgPicture.asset('assets/images/vector.svg',
                semanticsLabel: 'vector'),
          ),
          Positioned(
            top: 68,
            left: 27,
            child: SvgPicture.asset('assets/images/vector.svg',
                semanticsLabel: 'vector'),
          ),
        ]));
  }
}
