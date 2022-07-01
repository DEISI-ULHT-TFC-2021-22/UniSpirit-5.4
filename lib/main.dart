import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:projectunispiritfinalt/screens/Meets/meets_screen.dart';
import 'package:projectunispiritfinalt/screens/apontamentos_screen.dart';
import 'package:projectunispiritfinalt/screens/create_meet_screen.dart';
import 'package:projectunispiritfinalt/screens/explorar.dart';
import 'package:projectunispiritfinalt/screens/explore/ui/homepage/home_page.dart';
import 'package:projectunispiritfinalt/screens/home_screen.dart';
import 'package:projectunispiritfinalt/screens/login2/homepage.dart';
import 'package:projectunispiritfinalt/screens/login2/login.dart';
import 'package:projectunispiritfinalt/screens/login_screen.dart';

import 'package:projectunispiritfinalt/screens/perfil_screen.dart';
import 'package:projectunispiritfinalt/screens/splash_screen.dart';
import 'package:projectunispiritfinalt/screens/tutorial/onboarding_screen.dart';
import 'package:projectunispiritfinalt/screens/tutorial3/onbording.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await HiveConfig.start();
  await Firebase.initializeApp();
  //wait HiveConfig.start();





  runApp(const MyApp());





}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color:  Colors.purple,
      debugShowCheckedModeBanner: false,
      title: 'UniSpirit',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.purple,
        )
      ),

      routes: {
        SplashScreen.route: (context) => const SplashScreen(),
        HomeScreen.route: (context) => const HomeScreen(),
        ExplorarScreen.route: (context) => const ExplorarScreen(),
        CreateMeetScreen.route: (context)=> const CreateMeetScreen(),
        MeetsScreen.route: (context) => const MeetsScreen(),
        ApontamentosScreen.route: (context)=>const ApontamentosScreen(),
        PerfilScreen.route: (context)=> const PerfilScreen(),
        HomePage.route: (context)=> const HomePage(),
        LoginPage4.route: (context)=> LoginPage4(),


      },

      home:SplashScreen(),
      //SplashScreen()
      //HomePage8(),
      //SplashScreen(),
      //LoginPage4(),
    );
  }
}
