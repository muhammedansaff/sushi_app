import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/models/food.dart';

class FoodListDetails extends StatefulWidget {
  final Food food;
  const FoodListDetails({
    super.key,
    required this.food,
  });

  @override
  State<FoodListDetails> createState() => _FoodListDetailsState();
}

class _FoodListDetailsState extends State<FoodListDetails> {
  int quantity = 0;
  decrementquantity() {
    setState(() {
      if (quantity != 0) {
        quantity--;
      }
    });
  }

  incrementquantity() {
    setState(() {
      quantity++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: ListView(
                children: [
                  Image.asset(
                    widget.food.imagepath.toString(),
                    height: 140,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(widget.food.rating.toString())
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.food.name.toString(),
                    style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Discription",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${widget.food.name.toString()} is a beloved Japanese noodle soup dish that has gained international acclaim for its delicious flavors and versatility. It typically consists of Chinese-style wheat noodles served in a savory broth, topped with various ingredients such as sliced pork (chashu), bamboo shoots, green onions, nori (seaweed), boiled egg, and occasionally corn or bean sprouts.",
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      height: 2,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Container(
              margin: EdgeInsets.zero,
              color: Theme.of(context).primaryColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8, top: 15),
                            child: Text(
                              "\$${widget.food.price}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(223, 255, 254, 254),
                                  ),
                                  child: IconButton(
                                    onPressed: decrementquantity,
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  quantity.toString(),
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(223, 255, 254, 254),
                                  ),
                                  child: IconButton(
                                    onPressed: incrementquantity,
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: MyButton(
                        text: "Add to Cart",
                        onTap: () {},
                        width: 320,
                        height: 60),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
