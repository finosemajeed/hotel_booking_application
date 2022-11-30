import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingAndPrice extends StatelessWidget {
  const RatingAndPrice({
    Key? key,
    required this.pColor,
    required this.price,
    required this.rating,
  }) : super(key: key);

  final Color pColor;
  final int price;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RatingBar.builder(
                initialRating: rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 22,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(Icons.star, color: pColor),
                onRatingUpdate: (rating) {},
              ),
              Text(
                '\$$price',
                style: TextStyle(
                    color: pColor, fontSize: 24, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                direction: Axis.horizontal,
                spacing: 3,
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 17,
                    color: Colors.grey,
                  ),
                  Text(
                    '8km to Lulu Mall',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
              const Text(
                '/per night',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
