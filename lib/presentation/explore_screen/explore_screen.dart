import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';
import 'package:hotel_homepage_ui/db/dummy_data.dart';
import 'package:hotel_homepage_ui/db/hotel_data_model.dart';
import 'package:hotel_homepage_ui/presentation/explore_screen/widgets/booking_appbar.dart';
import 'package:hotel_homepage_ui/presentation/explore_screen/widgets/booking_searchbar.dart';
import 'package:hotel_homepage_ui/presentation/explore_screen/widgets/hotel_packages.dart';
import 'package:hotel_homepage_ui/presentation/explore_screen/widgets/popular_hotels.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite.withOpacity(0.96),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const BookingAppBar(),
          SliverList(
            delegate: SliverChildListDelegate([
              const BookingSearchBar(),
              const BookingTitleWidget(
                title: 'Popular Hotels',
              ),
              const PopularHotelCardsList(),
              const HotelPackageTitle(),
              ListView.builder(
                  padding: const EdgeInsets.all(0),
                  shrinkWrap: true,
                  itemCount: dummyProduct.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (ctx, index) {
                    return HotelPackagesCard(
                      image: hotelDetails[index].image,
                      rate: hotelDetails[index].price.toString(),
                      name: hotelDetails[index].name,
                    );
                  }),
              const SizedBox(
                height: 30,
              ),
            ]),
          )
        ],
      ),
    );
  }
}
