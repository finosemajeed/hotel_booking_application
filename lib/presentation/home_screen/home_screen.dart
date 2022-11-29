import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/custom_app_bar.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/product_card.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/service_list_card.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = ValueNotifier(0);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomAppBar(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ServiceListCard(),
                const ProductCard(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: currentIndex,
        builder: (BuildContext context, value, Widget? child) {
          return BottomNavigationBar(
              currentIndex: currentIndex.value,
              onTap: (index) {
                currentIndex.value = index;
              },
              selectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'Serach'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_rounded), label: 'Favorites'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings')
              ]);
        },
      ),
    );
  }
}
