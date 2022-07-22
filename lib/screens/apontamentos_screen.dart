import 'package:flutter/material.dart';
class ApontamentosScreen extends StatefulWidget {
  const ApontamentosScreen({Key? key}) : super(key: key);
  static const String route = 'apontamentos_screen';
  @override
  State<ApontamentosScreen> createState() => _ApontamentosScreenState();
}

class _ApontamentosScreenState extends State<ApontamentosScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Text("Apontamentos", style: TextStyle(fontSize: 40),),
        ),

      ),



    );
  }
}
