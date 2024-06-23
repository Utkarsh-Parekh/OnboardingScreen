import 'package:flutter/material.dart';
import 'package:onboardinscreen/textSection.dart';

class introPage1 extends StatelessWidget {
  const introPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        color: Colors.white,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextSection(
                textHeading: "Welcome to YouthScot - 1",
                textSubtitle: "A portal help to youth of Scotland",
                pageImage: AssetImage('assests/youth_login.jpg')),
          ],
        ),
      ),
    ));
  }
}
