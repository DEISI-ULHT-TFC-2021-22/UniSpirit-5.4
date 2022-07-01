import 'package:flutter/material.dart';

class HomePageBackGround extends StatelessWidget {
  final screenHeight;

  const HomePageBackGround({Key? key, this.screenHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData= Theme.of(context);
    return ClipPath(
      //clipper: BottomShapeClipper(),
      child: Container(
        height: screenHeight *0.5,
        color: Colors.purple,

      ),
    );
      Container();
  }
}
