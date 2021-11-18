// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class InstaPost extends StatelessWidget {
  const InstaPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey.shade300,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Profile'),
                SizedBox(
                  width: 5,
                ),
                // Icon(Icons.send_sharp),
              ],
            ),
            const Icon(Icons.more_vert_outlined),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 360,
          width: 420,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
          ),
          child: const Icon(
            Icons.image_not_supported_outlined,
            size: 250,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: const [
                Icon(Icons.favorite_border_outlined),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.mode_comment_outlined),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.send_sharp),
              ],
            ),
            const Icon(Icons.bookmark_rounded),
          ],
        ),
      ],
    );
  }
}
