import 'package:flutter/material.dart';
import 'package:flutter_clone_book/view/bottom_nav_bar/bottom_nav_bar.dart';

bool seeAllMovies = false;
String selectedPlace = 'Kochi';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
