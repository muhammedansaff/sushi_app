import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/components/food_tile.dart';
import 'package:sushi_app/models/food.dart';

// ignore: camel_case_types
class menu_page extends StatefulWidget {
  const menu_page({super.key});

  @override
  State<menu_page> createState() => _menu_pageState();
}

class _menu_pageState extends State<menu_page> {
  List foodmenu = [
    Food(
        name: "Salmon Sushi",
        price: "21.00",
        imagepath: "assets/images/sushi (3).png",
        rating: "4.9"),
    Food(
        name: "Tuna",
        price: "25.00",
        imagepath: "assets/images/sushi (1).png",
        rating: "4.9"),
    Food(
        name: "Ramen",
        price: "30.00",
        imagepath: "assets/images/ramen.png",
        rating: "5"),
    Food(
        name: "soup",
        price: "5",
        imagepath: "assets/images/Soup.png",
        rating: "3.9"),
    Food(
        name: "Sukiyaki",
        price: "50",
        imagepath: "assets/images/Sukiyaki.png",
        rating: "4.5"),
    Food(
        name: "Takoyaki",
        price: "25.00",
        imagepath: "assets/images/Takoyaki.png",
        rating: "4.2"),
    Food(
        name: "Tendon",
        price: "3.00",
        imagepath: "assets/images/tendon.png",
        rating: "3"),
    Food(
        name: "Udon",
        price: "8.00",
        imagepath: "assets/images/udon.png",
        rating: "4.9"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        toolbarHeight: 40,
        backgroundColor: Colors.grey.shade200,
        title: const Padding(
          padding: EdgeInsets.only(right: 50),
          child: Center(child: Text("Tokyo")),
        ),
        leading: const Icon(Icons.menu),
        automaticallyImplyLeading: false,
      ),
      //backgroundColor: const Color.fromARGB(225, 138, 60, 55),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 320,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 138, 61, 55),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Get 32% promo",
                        style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20, color: Colors.white),
                      ),
                      MyButton(
                        text: "Redeem",
                        onTap: () {},
                        width: 100,
                        height: 50,
                      )
                    ],
                  ),
                  Image.asset(
                    "assets/images/sushi (2).png",
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromARGB(225, 138, 60, 55),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color.fromARGB(224, 0, 0, 0),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              "Food menu",
              style: TextStyle(fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: foodmenu.length,
                itemBuilder: (context, index) => FoodTile(
                  food: foodmenu[index],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/sushi.png",
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 90),
                    child: Column(
                      children: [
                        Text(
                          "Salmon eggs",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 18,
                          ),
                        ),
                        const Text("\$21.00")
                      ],
                    ),
                  ),
                  const Icon(Icons.favorite_outline)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
