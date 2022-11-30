import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';
import 'package:hotel_homepage_ui/db/dummy_data.dart';
import 'package:hotel_homepage_ui/db/hotel_data_model.dart';
import 'package:hotel_homepage_ui/presentation/main_screen/widgets/bottom_navigation_widget.dart';
import 'package:hotel_homepage_ui/presentation/product_view_screen/widgets/book_button.dart';
import 'package:hotel_homepage_ui/presentation/product_view_screen/widgets/custom_image.dart';
import 'package:hotel_homepage_ui/presentation/product_view_screen/widgets/description.dart';
import 'package:hotel_homepage_ui/presentation/product_view_screen/widgets/rating_and_price.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as int;
    final product = dummyProduct.firstWhere(
      (element) => element['id'] == productId,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          CustomImage(
            roomImage: hotelDetails[productId].image,
            place: hotelDetails[productId].place,
            rating: hotelDetails[productId].rating,
            roomName: hotelDetails[productId].name,
          ),
          Column(
            children: [
              RatingAndPrice(
                pColor: kGreen,
                price: hotelDetails[productId].price,
                rating: product['rating'],
              ),
              const BookButton(pColor: kBlue),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'DESCRIPTION',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Description(description: product['about'])
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
      //  ValueListenableBuilder(
      //   valueListenable: currentIndex,
      //   builder: (BuildContext context, value, Widget? child) {
      //     return BottomNavigationBar(
      //       currentIndex: currentIndex.value,
      //       onTap: (index) {
      //         currentIndex.value = index;
      //       },
      //       selectedItemColor: Colors.black,
      //       items: const [
      //         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //         BottomNavigationBarItem(
      //             icon: Icon(Icons.search), label: 'Search'),
      //         BottomNavigationBarItem(
      //             icon: Icon(Icons.account_circle), label: 'Profile')
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
