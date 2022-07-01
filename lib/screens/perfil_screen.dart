import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({Key? key}) : super(key: key);
  static const String route = 'perfil_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Text("Perfil", style: TextStyle(fontSize: 40),),
        ),
      ),


    );
  }
}
