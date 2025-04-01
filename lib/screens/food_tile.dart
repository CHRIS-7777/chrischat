import 'package:chrischat/screens/food.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FoodTile extends StatelessWidget {
  Food food;
  FoodTile({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 25,
        bottom: 60,
      ),
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 190, 190),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(food.imagepath),
          SizedBox(height: 20),
          Text(
            food.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),
          Text(food.ingredients),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 136, right: 0, bottom: 0, top: 9),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.heart_broken),
              ],
            ),
          )
        ],
      ),
    );
  }
}
