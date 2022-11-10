import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';

class SearchFormField extends StatelessWidget {
  const SearchFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search here,',
          filled: true,
          fillColor: white,
          prefixIcon: const Icon(Icons.search),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: white,
              )),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: white,
              )),
        ),
      ),
    );
  }
}
