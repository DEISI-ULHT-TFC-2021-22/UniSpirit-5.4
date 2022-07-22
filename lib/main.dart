import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:projectunispiritfinalt/core/config/providers.dart';
import 'package:projectunispiritfinalt/core/theme.dart';
import 'package:projectunispiritfinalt/features/meets/presentation/screens/create_meet_screen.dart';
import 'package:projectunispiritfinalt/screens/apontamentos_screen.dart';
import 'package:projectunispiritfinalt/screens/explorar.dart';
import 'package:projectunispiritfinalt/screens/home_screen.dart';
import 'package:projectunispiritfinalt/screens/login2/homepage.dart';
import 'package:projectunispiritfinalt/screens/login2/login.dart';
import 'package:projectunispiritfinalt/screens/perfil_screen.dart';
import 'package:projectunispiritfinalt/screens/splash_screen.dart';
import 'package:projectunispiritfinalt/screens/userProfile/pages/profile_page.dart';
import 'package:provider/provider.dart';

void main() async {
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
    return MultiProvider(
      providers: unispiritProviders,
      child: MaterialApp(
        color: Colors.purple,
        debugShowCheckedModeBanner: false,
        title: 'UniSpirit',
        theme: appTheme,
        routes: {
          SplashScreen.route: (context) => const SplashScreen(),
          HomeScreen.route: (context) => const HomeScreen(),
          ExplorarScreen.route: (context) => const ExplorarScreen(),
          CreateMeetScreen.route: (context) => const CreateMeetScreen(),
          // MeetsScreen.route: (context) => const MeetsScreen(),
          ApontamentosScreen.route: (context) => const ApontamentosScreen(),
          ProfilePage.route: (context) => const ProfilePage(),
          HomePage.route: (context) => const HomePage(),

        },

        home:SplashScreen(),
        //SplashScreen(),
        //SplashScreen()
        //HomePage8(),
        //SplashScreen(),
        //LoginPage4(),
      ),
    );
  }
}
