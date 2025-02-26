import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product(
      {required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.id,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
      image: "assets/images/bag_1.png",
      title: "Office Code",
      description: dummyText,
      price: 2000,
      id: 1,
      size: 12,
      color: Color(0xFF3D82AE)),
  Product(
      image: "assets/images/bag_2.png",
      title: "Belt Bag",
      description: dummyText,
      price: 2500,
      id: 2,
      size: 8,
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
