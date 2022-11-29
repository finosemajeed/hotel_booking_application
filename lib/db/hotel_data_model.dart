import 'package:hotel_homepage_ui/db/dummy_data.dart';

final hotelDetails = dummyProduct.map((product) {
  return HotelDataModel.fromList(product);
}).toList();

class HotelDataModel {
  int id;
  String name;
  int price;
  String place;
  String image;
  String about;
  double rating;

  HotelDataModel({
    required this.id,
    required this.name,
    required this.price,
    required this.image,
    required this.about,
    required this.place,
    required this.rating,
  });

  factory HotelDataModel.fromList(Map<String, dynamic> data) {
    return HotelDataModel(
      id: data['id'],
      name: data['name'],
      price: data['price'],
      image: data['image'],
      about: data['about'],
      place: data['place'],
      rating: data['rating'],
    );
  }
}
