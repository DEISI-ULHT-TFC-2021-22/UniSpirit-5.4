import 'package:flutter/material.dart';
import 'package:projectunispiritfinalt/screens/login2/homepage.dart';
import 'package:projectunispiritfinalt/screens/login2/login.dart';
import 'dart:async';


import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _navigateToSplashScreen() {
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushNamed(LoginPage4.route);
    });
  }

  @override
  void initState() {
    _navigateToSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/logo5.png', fit: BoxFit.fill),
             const SizedBox(height: 5.0),
           const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(Colors.purple),
              strokeWidth: 11.0,
            )
          ],
        ),
      ),
    );
  }
}
