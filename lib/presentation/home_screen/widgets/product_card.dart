import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: const ClampingScrollPhysics(),
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: const [
        _ItemCard(
          image: 'assets/products/hotel1.jfif',
          title: 'Abad Whispering Palms',
          subtitle: 'Resort in Kumarakom',
          price: '5785',
        ),
        _ItemCard(
          image: 'assets/products/hotel2.jfif',
          title: 'Ramada Resort by Wyndham Kochi',
          subtitle: 'Ernakulam, Kerala 682506',
          price: '9874',
        ),
        _ItemCard(
          image: 'assets/products/hotel3.jfif',
          title: 'Jungle Beats Resorts',
          subtitle:
              'Thanjilod, Via Soojipara Waterfalls, Meppadi P.O, Meppadi, Kerala 673577',
          price: '4374',
        ),
        _ItemCard(
          image: 'assets/products/hotel4.jfif',
          title: 'Wetzlar Resorts and Hotels',
          subtitle:
              'Prasad Road , Market PO East, Kadathy, Muvattupuzha, Kerala 686673',
          price: '3888',
        ),
        _ItemCard(
          image: 'assets/products/hotel5.jfif',
          title: 'Hiliya Resort Wayanad',
          subtitle: 'Kenichira, Near Sulthan Bathery, Wayanad, Kerala',
          price: '1118',
        ),
      ],
    );
  }
}

class _ItemCard extends StatelessWidget {
  const _ItemCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.subtitle,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        color: white,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.fill),
                      color: pink,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))),
                  height: 200,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.star_border_outlined,
                        color: white,
                      )),
                ),
                Positioned(
                    right: 15,
                    bottom: 15,
                    child: Container(
                      height: 40,
                      width: 70,
                      color: white,
                      child: Center(
                          child: Text(
                        '₹ $price',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8),
              child: Row(
                children: const [
                  Icon(Icons.star, color: Colors.green),
                  Icon(Icons.star, color: Colors.green),
                  Icon(Icons.star, color: Colors.green),
                  Icon(Icons.star, color: Colors.green),
                  SizedBox(width: 10),
                  Text(
                    '(220 reviews)',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
