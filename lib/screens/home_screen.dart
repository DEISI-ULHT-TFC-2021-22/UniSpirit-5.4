import 'package:flutter/material.dart';

import 'package:projectunispiritfinalt/screens/perfil_screen.dart';
import 'package:projectunispiritfinalt/screens/userProfile/pages/profile_page.dart';



// import '../features/meets/presentation/screens/meets_screen.dart';
import 'apontamentos_screen.dart';
import 'explorar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String route = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  static const List<Widget> screens = [
    ExplorarScreen(),
    // CreateMeetScreen(),
    ApontamentosScreen(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 45),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        // Color.fromRGBO(0,0,0, 1),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() => currentIndex = index);
        },
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.purple.withOpacity(0.4),
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_explore.png'),
            ),
            label: "Explorar",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_meet.png'),
            ),
            label: "Meets",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_apontamentos.png'),
            ),
            label: "Apontamentos",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/icon_perfil.png'),
            ),
            label: "Perfil",
          ),
        ],
      ),
    );
  }
}
