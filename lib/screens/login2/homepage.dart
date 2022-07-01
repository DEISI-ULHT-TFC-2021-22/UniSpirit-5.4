import 'package:flutter/material.dart';
import 'package:projectunispiritfinalt/screens/create_meet_screen.dart';
import 'package:projectunispiritfinalt/screens/explore/ui/homepage/home_page.dart';

import 'package:projectunispiritfinalt/screens/perfil_screen.dart';



import '../Meets/meets_screen.dart';
import '../apontamentos_screen.dart';
import '../explorar.dart';

class HomePage extends StatefulWidget {
  static const String route = 'homepage_screen';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int paginaAtual=0;
  late PageController pc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pc= PageController(initialPage: paginaAtual);
  }
 setPaginaAtual(pagina){
    setState(() {
      paginaAtual=pagina;
    });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          HomePage8(),
          CreateMeetScreen(),
          CreateMeetScreen(),
          ApontamentosScreen(),
          PerfilScreen(),
        ],
        onPageChanged: setPaginaAtual,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, size: 45),
        onPressed: () {
          Navigator.of(context).pushNamed(CreateMeetScreen.route);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Colors.white),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type:BottomNavigationBarType.fixed ,
        // Color.fromRGBO(0,0,0, 1),

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.4),
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
            label:  "Meets",
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
        onTap: (pagina){
          pc.animateToPage(pagina, duration: Duration(microseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}
