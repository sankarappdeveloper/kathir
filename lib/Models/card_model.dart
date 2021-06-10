// import 'package:flutter/material.dart';

class CardModel {
  final String title;
  const CardModel({this.title});
}

const Card_Data = const [
  CardModel(
    title: "News",
  ),
  CardModel(
    title: "Settings",
  ),
  CardModel(
    title: "Messaging",
  ),
  CardModel(
    title: "Files",
  ),
  CardModel(
    title: "Orders",
  ),
  CardModel(
    title: "Account",
  ),
];

// ! News data list details
class NewsModel {
  final String title;
  final String imageUrl;
  final String date;
  const NewsModel({this.title, this.date, this.imageUrl});
}

const News_Data = const [
  NewsModel(
    title: "Content DRDO invites EoI to transfer technology of 2-D ",
    imageUrl:
        "https://simpleflying.com/wp-content/uploads/2018/11/Aeroplan-Air-Canada.png",
    // date: "",
  ),
  NewsModel(
    title: "A Simple plugin to implement settings UI",
    imageUrl:
        "https://cdn.pixabay.com/photo/2014/02/17/10/20/statue-of-liberty-267948__340.jpg",
    // date: "",
  ),
  NewsModel(
    title: "Discover more great images on our sponsor's site",
    imageUrl:
        "https://cdn.pixabay.com/photo/2018/03/07/17/15/balloon-3206530__340.jpg",
    // date: "",
  ),
  NewsModel(
    title: " I simply give height of slide page",
    imageUrl:
        "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-381233__340.jpg",
    date: "",
  ),
];

//!Shop app product details ===========================================

class Product {
  final String id;
  final String title;
  final String description;

  final String imageUrl;
  final double price;
  const Product(
      {this.id, this.title, this.description, this.price, this.imageUrl});
}

const Shop_Data = const [
  Product(
    id: 'p1',
    title: 'T-Shirt',
    description: 'A red shirt - it is pretty red!',
    price: 79.99,
    imageUrl:
        'https://th.bing.com/th?id=OPA.mOlqi%2fh77KCPrA474C474&w=165&h=220&rs=1&o=5&pid=21.1',
  ),
  Product(
    id: 'p2',
    title: 'Trousers',
    description: 'A nice pair of trousers.',
    price: 99.99,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
  ),
  Product(
    id: 'p3',
    title: 'Shirt',
    description: 'Warm and cozy - exactly what you need for the winter.',
    price: 199.99,
    imageUrl:
        'https://img.freepik.com/free-photo/shirt_1203-8194.jpg?size=338&ext=jpg',
  ),
  Product(
      id: 'p4',
      title: 'Pants',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://img.freepik.com/free-photo/jeans_1203-8093.jpg?size=338&ext=jpg'),
];
