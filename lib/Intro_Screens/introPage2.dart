
import 'package:flutter/material.dart';

import '../textSection.dart';

class introPage2 extends StatelessWidget {
  const introPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            color: Colors.white,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextSection(textHeading: "Welcome to YouthScot-2", textSubtitle: "A portal to group the youth of Scotland",
                pageImage: AssetImage('assests/youth_meetup.jpg'),
                )
              ],
            ),
          ),
        ));
  }
}
