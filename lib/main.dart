import 'package:flutter/material.dart';
import 'package:flutter_clone_book/view/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter_clone_book/view/buyOrRent/buyOrRent.dart';

bool seeAllMovies = false;
String selectedPlace = 'Kochi';
  String phno = '';
  String email = '';
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
      onGenerateRoute: (settings) {
        if (settings.name == '/buyrent') {
          final args = settings.arguments as int;
          return MaterialPageRoute(
            builder: (context) => Buyorrent(index: args),
          );
        }
      },
    );
  }
}
