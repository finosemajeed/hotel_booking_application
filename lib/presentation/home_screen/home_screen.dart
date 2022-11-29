import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/custom_app_bar.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/product_card.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/service_list_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
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
    );
  }
}
