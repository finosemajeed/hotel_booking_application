import 'package:flutter/material.dart';
import 'package:hotel_homepage_ui/core/color_config.dart';

class HotelPackageTitle extends StatelessWidget {
  const HotelPackageTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 20, right: 20),
      child: Row(children: [
        const Text(
          'Hotel Packages',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
        const Spacer(),
        TextButton(
            onPressed: () {},
            child: const Text(
              'View more',
              style: TextStyle(color: Colors.blue),
            ))
      ]),
    );
  }
}

class HotelPackagesCard extends StatelessWidget {
  const HotelPackagesCard({
    Key? key,
    required this.image,
    required this.name,
    required this.rate,
  }) : super(key: key);
  final String image;
  final String name;
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: 5,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              Expanded(
                  child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                        ),
                        const Text(
                          'A five star hotel in kochi',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        Text(
                          '\$$rate / night',
                          style: const TextStyle(color: kGreen),
                        ),
                        Wrap(
                          spacing: 5,
                          alignment: WrapAlignment.center,
                          direction: Axis.horizontal,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 2.0, right: 3),
                              child: Icon(
                                Icons.abc,
                                color: kBlue,
                                size: 20,
                              ),
                            ),
                            Icon(
                              Icons.radio,
                              color: kBlue,
                            ),
                            Icon(
                              Icons.wine_bar,
                              color: kBlue,
                            ),
                            Icon(
                              Icons.wifi,
                              color: kBlue,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 0,
                    child: Material(
                      elevation: 10,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      child: Container(
                        alignment: Alignment.center,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: kBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                        height: 40,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Book',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
