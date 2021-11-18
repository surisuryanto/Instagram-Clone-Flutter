import 'package:flutter/material.dart';

class InstaStory extends StatelessWidget {
  const InstaStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/profile.png',
            width: 70,
            height: 70,
          ),
        ),
        const Text(
          'Instagram Story',
          style: TextStyle(
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
