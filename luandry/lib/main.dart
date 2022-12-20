import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:luandry/page/home.dart';
import 'package:luandry/page/places.dart';
import 'package:luandry/page/settings.dart';
import 'auth/login/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  final screens = [
    homepage(),
    places(),
    settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screens[index],
        bottomNavigationBar: GNav(
          backgroundColor: Colors.lightBlue,
          color: Colors.black,
          activeColor: Colors.black,
          gap: 8,
          padding: EdgeInsets.all(20),
          onTabChange: (index) {
            setState(() {
              this.index = index;
            });
          },
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.location_city,
              text: 'Locations',
            ),
            GButton(
              icon: Icons.settings,
              text: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
