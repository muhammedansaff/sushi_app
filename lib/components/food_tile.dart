import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  const FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                food.imagepath.toString(),
                height: 140,
              ),
              Text(
                food.name.toString(),
                style: GoogleFonts.dmSerifDisplay(fontSize: 20),
              ),
              SizedBox(
                width: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${food.price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(food.rating.toString())
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
