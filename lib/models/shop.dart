import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodmenu = [
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
  List<Food> _cart = [];

  List<Food> get cart => _cart;
  List<Food> get foodmenu => _foodmenu;

  void addtocart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removecart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
