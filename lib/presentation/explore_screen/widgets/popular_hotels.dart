import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';
import 'package:hotel_homepage_ui/db/hotel_data_model.dart';

class BookingTitleWidget extends StatelessWidget {
  const BookingTitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 20),
      child: Text(
        title,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
    );
  }
}

class PopularHotelCardsList extends StatelessWidget {
  const PopularHotelCardsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10),
        height: MediaQuery.of(context).size.height * 0.29,
        child: ListView.builder(
          primary: true,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: hotelDetails.length,
          itemBuilder: ((context, index) => GestureDetector(
                onTap: () => onItemClick(context, hotelDetails[index].id),
                child: PopularHotelsCard(
                  desc: 'A three star hotel in kakkanad',
                  image: hotelDetails[index].image,
                  name: hotelDetails[index].name,
                  rate: hotelDetails[index].price.toString(),
                  rating: hotelDetails[index].rating.toString(),
                ),
              )),
        ));
  }

  void onItemClick(BuildContext context, productId) {
    Navigator.of(context).pushNamed('/product_view', arguments: productId);
  }
}

class PopularHotelsCard extends StatelessWidget {
  const PopularHotelsCard({
    Key? key,
    required this.image,
    required this.desc,
    required this.rate,
    required this.name,
    required this.rating,
  }) : super(key: key);
  final String image;
  final String desc;
  final String rate;
  final String name;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 3,
        child: Container(
          height: 210,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(image)),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  name,
                  style: const TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 10, right: 3),
                child: Text(
                  desc,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10, right: 5),
                child: Row(
                  children: [
                    Text(
                      '\$$rate / night',
                      style: const TextStyle(color: kGreen),
                    ),
                    const Spacer(),
                    Text(
                      rating,
                      style: const TextStyle(color: kGreen),
                    ),
                    const Icon(
                      Icons.star,
                      size: 17,
                      color: kGreen,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
