import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.textHeading,
    required this.textSubtitle,
    required this.pageImage,
  });

  final String textHeading;
  final String textSubtitle;
  final AssetImage pageImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Image(image: pageImage),
          Text(textHeading,
              style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),

          Text(textSubtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)
          )],
      ),
    );
  }
}
