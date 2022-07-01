import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen(
      {Key? key, required this.image, required this.title, required this.description,})
      : super(key: key);
final String image, title,description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              image,

              height: 250,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const SizedBox(height: 16),
            Text(
                description,
            textAlign:TextAlign.center)
          ],
        ),
      ),
    );
  }
}
