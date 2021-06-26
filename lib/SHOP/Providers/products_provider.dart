import 'package:flutter/cupertino.dart';
import 'package:project_1/SHOP/Providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'T-Shirt',
      description:
          "A T-shirt, or tee shirt, is a style of fabric shirt named after the T shape of its body and sleeves. Traditionally, it has short sleeves and a round neckline, known as a crew neck, which lacks a collar. T-shirts are generally made of a stretchy, light and inexpensive fabric and are easy to clean.",
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

  // var _showFavoritesOnly = false;
  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }
  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    notifyListeners();
  }
}
