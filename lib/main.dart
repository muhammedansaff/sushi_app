import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/pages/intro_page.dart';
import 'package:sushi_app/pages/menu_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(
            225, 138, 60, 55), // Define your primary color here
      ),
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
