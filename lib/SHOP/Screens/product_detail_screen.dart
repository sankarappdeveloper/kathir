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
    var query = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      loadedProduct.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                // height: 300,
                child: Container(
                  height: 300,
                  width: query.size.width,
                  child: Container(
                    child: Card(
                      elevation: 7,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text('\$${loadedProduct.price}',
                            style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'avenir',
                                color: Colors.blue[900])),
                      ),
                    ),
                    // color: Colors.white,
                    alignment: Alignment(0.0, 1.5),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Card(
                  // margin: EdgeInsets.all(20),
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(loadedProduct.title,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'avenir',
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      loadedProduct.description,
                      style: TextStyle(fontSize: 16, color: Colors.pink[300]),
                    ),
                  ],
                ),
              )),
              SizedBox(
                height: 10,
              ),
              ButtonBar(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        elevation: 6,
                        padding:
                            EdgeInsets.symmetric(horizontal: 38, vertical: 10),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        elevation: 6,
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
              // Stack(
              //   children: [
              //     Container(
              //       alignment: Alignment(-1.5, -100),
              //       child: CircleAvatar(
              //         backgroundColor: Colors.red,
              //       ),
              //     )
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
