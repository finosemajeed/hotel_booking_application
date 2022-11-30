// ignore_for_file: must_be_immutable


import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/presentation/explore_screen/explore_screen.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/home_screen.dart';
import 'package:hotel_homepage_ui/presentation/main_screen/widgets/bottom_navigation_widget.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final pages = <Widget>[
    const HomeScreen(),
    const ExploreScreen(),
    const Icon(Icons.settings),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, int index, _) {
          return pages[index];
        },
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
