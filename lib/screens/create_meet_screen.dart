import 'package:flutter/material.dart';

class CreateMeetScreen extends StatefulWidget {
  const CreateMeetScreen({Key? key}) : super(key: key);
  static const String route = 'create_meet_screen';
  @override
  State<CreateMeetScreen> createState() => _CreateMeetScreenState();
}

class _CreateMeetScreenState extends State<CreateMeetScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        child: Center(
          child: Text("Criar Meet", style: TextStyle(fontSize: 40),),
        ),
      ),



    );
  }
}
