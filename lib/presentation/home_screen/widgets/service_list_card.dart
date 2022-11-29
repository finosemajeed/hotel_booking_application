import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';

class ServiceListCard extends StatelessWidget {
  const ServiceListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: Row(
        children: const [
          _ServiceCard(
            icon: Icons.airline_seat_flat,
            title: 'Hotel',
            color: kPink,
          ),
          _ServiceCard(
            icon: Icons.restaurant,
            title: 'Restaurant',
            color: kBlue,
          ),
          _ServiceCard(
            icon: Icons.coffee,
            title: 'Cafe',
            color: kOrange,
          ),
        ],
      ),
    );
  }
}

class _ServiceCard extends StatelessWidget {
  const _ServiceCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            icon,
            color: kWhite,
            size: 35,
          ),
          const Text(
            'Hotel',
            style: TextStyle(
              color: kWhite,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
    );
  }
}
