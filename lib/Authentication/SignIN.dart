import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:falspot/Authentication/SignUP.dart';
import 'package:falspot/Home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:math' as math;


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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 150,
              ),
              Transform.rotate(
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
                  ),
                  child: Transform.rotate(
                    angle: 2.890000071498558 * (math.pi / 180),
                    child: Text(
                      'FalSpot',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          letterSpacing: 20,
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                          height: 1.5 /*PERCENT not supported*/
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 246, 246, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'WELCOME BACK!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.black),
                        cursorColor: Colors.black,
                        autofocus: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            borderSide: BorderSide(
                              color: Color(0xff0a1c2b),
                            ),
                          ),
                          fillColor: Color(0xff0a1c2b),
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          errorText: invalid ? 'Invalid user' : null,
                          hintText: 'Mobile Number',
                          labelText: 'Mobile Number',
                          prefixIcon: const Icon(
                            Icons.phone,
                          ),
                          // suffixStyle: const TextStyle(color: Colors.black),
                        ),
                        onChanged: (value) {
                          usermob = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: TextField(
                        obscureText: !_passwordVisible,
                        cursorColor: Colors.black,
                        autofocus: false,
                        style: TextStyle(color: Colors.black),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(
                                color: Color(0xff0a1c2b),
                              )),
                          labelText: 'Password',
                          hintText: 'Password',
                          fillColor: Color(0xff0a1c2b),
                          errorText: invalid ? 'Invalid password' : null,
                          prefixIcon: const Icon(
                            Icons.lock,
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              // color: Theme.of(context).primaryColorDark,
                            ),
                            onPressed: () {
                              setState(() {
                                _passwordVisible = !_passwordVisible;
                              });
                            },
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {
                            invalid = false;
                          });
                          password = value;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password ?',
                              // textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .25,
                        ),
                        // ignore: deprecated_member_use
                        FlatButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return SignUP();
                              }),
                            );
                          },
                          child: Text(
                            'New User ?',
                            // textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      padding: EdgeInsets.all(0.0),
                      onPressed: () async {
                        // ignore: unnecessary_null_comparison
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
                      elevation: 5,
                      highlightColor: Colors.grey[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      //backgroundColor: Colors.black,
                      child: _islogged
                          ? Transform.scale(
                              scale: 0.6,
                              child: CircularProgressIndicator(
                                  backgroundColor: Colors.white))
                          : Ink(
                              padding: EdgeInsets.only(left: 30, right: 30),
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Container(
                                constraints: BoxConstraints(
                                    maxWidth: 60.0, minHeight: 37.0),
                                alignment: Alignment.center,
                                child: Text(
                                  "LOGIN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
