import 'package:flutter/material.dart';

class Product {
  final int id, price;
  final String image, title, description;
  Product({
    required this.id,
    required this.price,
    required this.image,
    required this.title,
    required this.description,
  });
}

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

List<Product> products = [
  Product(
    id: 1,
    title: "Headset iPhone",
    price: 25,
    description: dummyText,
    image: "assets/images/headset-iphone.png",
  ),
  Product(
    id: 2,
    title: "Samsung usb-c",
    price: 15,
    description: dummyText,
    image: "assets/images/samsung-usbc.png",
  ),
  Product(
    id: 3,
    title: "3m iPhone 11 usb",
    price: 45,
    description: dummyText,
    image: "assets/images/usb.png",
  ),
  Product(
    id: 4,
    title: "iPhone 11 Cover",
    price: 33,
    description: dummyText,
    image: "assets/images/mobile.png",
  ),
  Product(
    id: 5,
    title: "iPhone 12 charger",
    price: 11,
    description: dummyText,
    image: "assets/images/charger.png",
  ),
  Product(
    id: 6,
    title: "Microphone",
    price: 26,
    description: dummyText,
    image: "assets/images/mic.png",
  ),
];
