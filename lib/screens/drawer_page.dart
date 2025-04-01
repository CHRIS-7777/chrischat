import 'package:chrischat/reusable_widgets/reusable_widget.dart';
import 'package:chrischat/screens/home_screen.dart';
import 'package:chrischat/screens/signin_screen.dart';
import 'package:chrischat/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // To remove any default padding
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(
                  255, 157, 211, 255), // Background color of header
            ),
            child: Align(
              alignment: Alignment.topCenter, // Move text to the bottom-left
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Handle home menu tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('SignIn'),
            onTap: () {
              // Handle settings menu tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignInScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2),
            title: const Text('SignUp'),
            onTap: () {
              // Handle profile menu tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpScreen()),
              );
            },
          ),
          SizedBox(
            height: 300.0,
          ),
          LogoutButton(context, false, () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignInScreen()));
          })
        ],
      ),
    );
  }
}
