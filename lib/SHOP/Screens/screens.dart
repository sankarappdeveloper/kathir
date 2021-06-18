import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/cart.dart';
import 'package:project_1/SHOP/Screens/Cart_Screen.dart';
import 'package:project_1/SHOP/Widgets/app_drawer.dart';
import 'package:project_1/SHOP/Widgets/badge.dart';
import 'package:project_1/SHOP/Widgets/product_grid.dart';
import 'package:provider/provider.dart';

enum FilterOption { Favorite, All }

class ProductOverViewScreen extends StatefulWidget {
  // const ProductOverViewScreen({Key key}) : super(key: key);
  // final List<Product> loadedProducts = [
  // Product(
  //   id: 'p1',
  //   title: 'Red Shirt',
  //   description: 'A red shirt - it is pretty red!',
  //   price: 29.99,
  //   imageUrl:
  //       'https://th.bing.com/th?id=OPA.mOlqi%2fh77KCPrA474C474&w=165&h=220&rs=1&o=5&pid=21.1',
  // ),];

  @override
  _ProductOverViewScreenState createState() => _ProductOverViewScreenState();
}

class _ProductOverViewScreenState extends State<ProductOverViewScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    // final productContainer = Provider.of<Products>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Products List'),
        actions: <Widget>[
          Consumer<Cart>(
            builder: (_, cart, ch) => Badge(
              child: ch,
              value: cart.itemCount.toString(),
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                // color: Colors.red,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
            ),
          ),
          PopupMenuButton(
            onSelected: (FilterOption selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.Favorite) {
                  _showOnlyFavorites = true;
                } else {
                  _showOnlyFavorites = false;
                }
              });

              // print(selectedValue);
            },
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOption.Favorite,
              ),
              PopupMenuItem(
                child: Text('All'),
                value: FilterOption.All,
              )
            ],
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: ProductGrid(_showOnlyFavorites),
    );
  }
}
