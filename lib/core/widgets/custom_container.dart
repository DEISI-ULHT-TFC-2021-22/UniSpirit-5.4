import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.child,
    this.border,
    this.boxShadow,
  }) : super(key: key);

  final Widget child;
  final BoxBorder? border;
  final List<BoxShadow>? boxShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: border,
        boxShadow: boxShadow,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: child,
    );
  }
}
