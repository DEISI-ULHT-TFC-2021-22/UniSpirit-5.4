import 'package:flutter/material.dart';

//final screenHeight

class MeetsScreen extends StatelessWidget {
  const MeetsScreen({Key? key}) : super(key: key);
  static const String route = 'meets_screen';
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return ClipPath(
     /* clipper: Container(
        height: screenHeight * 0.5,
      ),
    */);
  }
}

