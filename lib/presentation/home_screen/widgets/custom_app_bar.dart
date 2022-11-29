import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';
import 'package:hotel_homepage_ui/presentation/home_screen/widgets/search_form_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: const Color(0xFF00BCD4),
      floating: true,
      pinned: true,
      title: const Icon(Icons.menu),
      // expandedHeight: 160,

      // flexibleSpace: FlexibleSpaceBar(
      //   background: Text(
      //     'Type your Location',
      //     style: TextStyle(
      //       color: white,
      //       fontSize: 20,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   title: SearchFormField(),
      //   centerTitle: true,
      //   expandedTitleScale: 1,
      // ),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline))
      ],
      bottom: AppBar(
        backgroundColor: const Color(0xFF00BCD4),
        toolbarHeight: 120,
        flexibleSpace: Column(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Type your Location',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SearchFormField(),
          ],
        ),
        centerTitle: true,
      ),
    );
  }
}
