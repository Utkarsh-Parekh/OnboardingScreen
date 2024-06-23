
import 'package:flutter/material.dart';

import '../textSection.dart';

class introPage3 extends StatelessWidget {
  const introPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
        child: Container(
        color: Colors.white,
        child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
    TextSection(textHeading: "Welcome to YouthScot-3", textSubtitle: "A portal help to share the information to youth",
    pageImage: AssetImage('assests/youth_group.jpg'),
    )
    ],
    ),
    ),
    ));
  }
}
