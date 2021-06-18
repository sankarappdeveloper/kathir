import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/products_provider.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatelessWidget {
  // const ProductDetails({Key key}) : super(key: key);
  // final String title;
  // ProductDetails(this.title);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(
      context,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(title: Text(loadedProduct.title)),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
