import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/shop.dart';

class MYcart extends StatefulWidget {
  const MYcart({super.key});

  @override
  State<MYcart> createState() => _MYcartState();
}

class _MYcartState extends State<MYcart> {
  void removecart(Food food) {
    final shop = context.read<Shop>();
    shop.removecart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(
              child: Text(
            "My Cart",
            style: TextStyle(color: Colors.white),
          )),
          backgroundColor: Theme.of(context).primaryColor,
          toolbarHeight: 40,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  final Food food = value.cart[index];
                  final String foodname = food.name.toString();
                  final String foodprice = food.price.toString();
                  return Container(
                    margin: const EdgeInsets.only(
                        bottom: 5, left: 20, right: 20, top: 10),
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: ListTile(
                      title: Text(
                        foodname,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      subtitle: Text(foodprice),
                      trailing: IconButton(
                          onPressed: () {
                            removecart(food);
                          },
                          icon: const Icon(Icons.delete)),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: MyButton(
                  text: "Pay now", onTap: () {}, width: 360, height: 60),
            )
          ],
        ),
      ),
    );
  }
}
