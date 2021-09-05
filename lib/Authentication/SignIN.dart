import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:falspot/Home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: camel_case_types
class SignIN extends StatefulWidget {
  @override
  _SignINState createState() => _SignINState();
}

class Authvar {
  static var username1 = "not yet";
  static var usermob1 = "not yet";
  static var usermail1 = "not yet";
  static var userlast;
}

enum Authstatus {
  _signedIn,
  _notsignedIn,
}

// ignore: non_constant_identifier_names
AppToast(String state) {
  Fluttertoast.showToast(
      msg: state,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey[300],
      textColor: Colors.black,
      fontSize: 16.0);
}

bool _passwordVisible = false;
@override
void initState() {
  _passwordVisible = false;
}

// ignore: camel_case_types
class _SignINState extends State<SignIN> {
  var authc = FirebaseAuth.instance;
  FirebaseFirestore fsconnect = FirebaseFirestore.instance;
  Authstatus _authstatus = Authstatus._notsignedIn;

  @override
  void initState() {
    super.initState();
    setState(() {
      {
        _authstatus = FirebaseAuth.instance.currentUser != null
            ? Authstatus._signedIn
            : Authstatus._notsignedIn;
      }
    });
  }

  var _islogged = false;
  bool error = false;
  bool invalid = false;
  late String email;
  late String password;
  late String username;
  late String usermob;

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Sign_inWidget - FRAME

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 337,
              left: 0,
              child: Container(
                  width: 414,
                  height: 559,
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
                    color: Color.fromRGBO(221, 221, 221, 0.800000011920929),
                  ))),
          Positioned(
              top: 580,
              left: 41,
              child: Container(
                  width: 324,
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
                      left: 14,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                    Positioned(
                      top: 16,
                      left: 276,
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
              top: 678,
              left: 239,
              child: Text(
                'New User?',
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
              top: 389,
              left: 54,
              child: Text(
                'WELCOME BACK!',
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
              top: 493,
              left: 46,
              child: Container(
                  width: 324,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(196, 196, 196, 1),
                  ))),
          Positioned(
              top: 493,
              left: 46,
              child: Container(
                  width: 324,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                      top: 14,
                      left: 11.571428298950195,
                      child: SvgPicture.asset('assets/images/vector.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ]))),
          Positioned(
            top: 493,
            left: 46,
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
            ),
          ),
          Positioned(
              top: 768,
              left: 121,
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
          Positioned(
              top: 771,
              left: 121,
              child: Container(
                  width: 155,
                  height: 44,
                  child: Stack(children: <Widget>[
                    RaisedButton(
                        onPressed: () async {
                          if (password != null && email != null) {
                            var result;
                            setState(() {
                              _islogged = true;
                            });
                            try {
                              result = await authc.signInWithEmailAndPassword(
                                  email: email, password: password);
                              print(authc.currentUser!.uid);
                              var retrived = await fsconnect
                                  .collection("user")
                                  .doc(authc.currentUser!.uid)
                                  .get();
                              print(retrived.data());
                              var temp = retrived.data();
                              Authvar.usermob1 = temp!['mob'];
                              Authvar.usermail1 = temp['mail'];
                              Authvar.username1 = temp['Name'];
                              Authvar.userlast =
                                  authc.currentUser!.metadata.lastSignInTime;
                              setState(() {
                                _islogged = false;
                              });
                            } catch (e) {
                              print(e);
                              setState(() {
                                invalid = true;
                                _islogged = false;
                              });
                            }
                            print(result);
                            if (result != null) {
                              setState(() {
                                _islogged = false;
                                invalid = false;
                              });
                              print('logged in');
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return Dashboard();
                                }),
                              );
                            }
                          } else {
                            AppToast("No Credentials found");
                          }
                        },
                        child: Text(
                          'LOGIN',
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
              top: 678,
              left: 38,
              child: Text(
                'Forgot password?',
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
