import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/presentation/explore_screen/explore_screen.dart';
import 'package:hotel_homepage_ui/presentation/main_screen/main_screen.dart';
import 'package:hotel_homepage_ui/presentation/product_view_screen/product_view_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/product_view': (context) => ProductViewScreen(),
        '/explore_screen': (context) => ExploreScreen(),
      },
    );
  }
}
