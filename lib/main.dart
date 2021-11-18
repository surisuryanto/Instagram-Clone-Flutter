import 'package:flutter/material.dart';
import 'package:insta_clone/home_insta.dart';
import 'package:insta_clone/insta_post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeInsta(),
    );
  }
}
