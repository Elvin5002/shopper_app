import 'package:flutter/material.dart';

class IntroductionTitle extends StatelessWidget {
  const IntroductionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.left,
      text: const TextSpan(
        style: TextStyle(fontSize: 62, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
            text: 'Please your\neyes on the\n',
          ),
          TextSpan(
            text: 'trending\nitems',
            style: TextStyle(
              color: Color(0xFF9B99F5),
            ),
          ),
          TextSpan(
            text: '\nShopy.',
          ),
        ],
      ),
    );
  }
}
