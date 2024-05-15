import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;

  final void Function()? onTap;
  const MyButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color.fromARGB(224, 138, 77, 72),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
              const Icon(
                size: 20,
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
