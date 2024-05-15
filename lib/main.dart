import 'package:flutter/material.dart';
import 'package:sushi_app/pages/intro_page.dart';
import 'package:sushi_app/pages/menu_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "sush_app",
      home: const Intro_Page(),
      routes: {
        "/intropage": (context) => const Intro_Page(),
        "/menupage": (context) => const menu_page(),
      },
    );
  }
}
