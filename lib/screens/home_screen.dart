import 'package:chrischat/screens/drawer_page.dart';
import 'package:chrischat/screens/food.dart';
import 'package:chrischat/screens/food_tile.dart';
import 'package:chrischat/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Let's Cook",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
          ),
        ],
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 255, 251, 36),
                const Color.fromARGB(255, 197, 72, 0),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      drawer: DrawerPage(),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(13),
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(17),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search something'),
              Icon(Icons.search),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text('😋🍔 Cook something tasty Please 🍔😋',
              style: TextStyle(color: Colors.black)),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Food food = Food(
                  name: 'Paani Poori',
                  ingredients:
                      'To make Pani Puri, you will need ingredients for three main components: the puri, pani (spiced water), and the filling. For the puri, use 1 cup semolina (sooji/rava).',
                  imagepath: 'assets/images/burger.png');

              return FoodTile(
                food: food,
              );
            },
          ),
        ),
      ]),
    );
  }
}
