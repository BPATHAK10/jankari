import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'Kupandole',
      address: '18 W 29th St',
      description:
      'Place where you will find bus and micro',
      locationCoords: LatLng(	27.6878413, 85.3163025),
      thumbNail: 'https://lh3.googleusercontent.com/p/AF1QipNWjfUBW0Ygv9KNLbm5LttAtNoX1f4caSvX01Qz=s1600-w400'
  ),
  Coffee(
      shopName: 'Thapathali',
      address: '463 7th Ave',
      description:
      'In front of Thapathali Campus',
      locationCoords: LatLng(27.694855, 85.319347),
      thumbNail: 'https://assets-cdn.ekantipur.com/images/the-kathmandu-post/entertainment/_KT_6887-copy-28092017105010.jpg'
  ),
  Coffee(
      shopName: 'Putalisadak',
      address: '563 8th Ave',
      description:
      'Putalisadak',
      locationCoords: LatLng(27.707367, 85.322821),
      thumbNail: 'https://i.ytimg.com/vi/M8HloCpqElU/maxresdefault.jpg'
  ),



];

