import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'Animation/AnimatedSpash.dart';
import 'Authentication/SignIN.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await Firebase.initializeApp();
  runApp(Falspot());
}

class Falspot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        brightness: Brightness.light,
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(
        function: () async {},
        splashIconSize: double.infinity,
        duration: 5000,
        splash: SplashScreen(),
        nextScreen: SignIN(),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
