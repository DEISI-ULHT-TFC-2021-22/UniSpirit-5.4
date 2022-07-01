import 'package:flutter/material.dart';


import '../widgets/Body.dart';

class ExplorarScreen extends StatefulWidget {

  const ExplorarScreen({Key? key}) : super(key: key);

  static const String route = 'explore_screen';

  @override
  State<ExplorarScreen> createState() => _ExplorarScreenState();
}

class _ExplorarScreenState extends State<ExplorarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
