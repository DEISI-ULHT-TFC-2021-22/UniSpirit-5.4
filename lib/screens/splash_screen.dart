import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectunispiritfinalt/screens/login2/homepage.dart';
import 'package:projectunispiritfinalt/screens/login2/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = 'splash_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, AsyncSnapshot<User?> userSnapshot) {
          if (userSnapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/logo5.png', fit: BoxFit.fill),
                  const SizedBox(height: 5.0),
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.purple),
                    strokeWidth: 11.0,
                  ),
                ],
              ),
            );
          }
          if (userSnapshot.data != null) {
            return const HomePage();
          }
          if (userSnapshot.data == null) {
            return const LoginScreen();
          }
          return const SizedBox();
        },
      ),
    );
  }
}
