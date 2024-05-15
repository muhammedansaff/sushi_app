import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';

// ignore: camel_case_types
class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(225, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              "SUSHI MAN",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: Image.asset(
                "assets/images/sushi.png",
                scale: 2.2,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "The Taste Of Japanese Food",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 45, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "feel the taste of the most popular japanese food in thw world",
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            MyButton(
                width: 320,
                height: 60,
                text: "Get started ",
                onTap: () {
                  Navigator.pushNamed(context, "/menupage");
                })
          ],
        ),
      ),
    );
  }
}
