import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/cart.dart';
import 'package:project_1/SHOP/Providers/product.dart';
import 'package:project_1/SHOP/Screens/product_detail_screen.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {
  // const ProductItem({Key key}) : super(key: key);
  // final String id;
  // final String title;

  // final String imageUrl;

  // ProductItem(this.id, this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    // print('Hiii');
    final product = Provider.of<Product>(context, listen: false);
    final cart = Provider.of<Cart>(context, listen: false);
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        ProductDetails.routeName,
                        arguments: product.id,
                        // MaterialPageRoute(builder: (ctx) => ProductDetails(title)),
                      );
                    },
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Consumer<Product>(
                        builder: (ctx, product, child) => IconButton(
                          icon: Icon(
                            product.isFavorite
                                ? Icons.favorite
                                : Icons.favorite_border,
                            // product.isFavorite ? Icons.favorite : Icons.favorite_border,
                            // color: Theme.of(context).accentColor,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            product.toggleFavorite();
                            // print('clicked');
                          },
                        ),
                      ),
                      // IconButton(
                      //   // icon: product.isFavorite.value
                      //       ? Icon(Icons.favorite_rounded)
                      //       : Icon(Icons.favorite_border),
                      //   onPressed: () {
                      //     // product.isFavorite.toggle();
                      //   },
                      // ),
                    )),
              ],
            ),
            SizedBox(height: 8),
            Text(
              product.title,
              maxLines: 2,
              style: TextStyle(
                fontFamily: 'avenir',
                fontWeight: FontWeight.w800,
                color: Colors.pinkAccent,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '4',
                        // product.rating.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Icon(
                        Icons.star,
                        size: 10,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    // color: Theme.of(context).accentColor,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    cart.addItem(product.id, product.price, product.title);
                  },
                ),
                // ),
              ],
            ),
            SizedBox(height: 8),
            Text('\$${product.price}',
                style: TextStyle(fontSize: 32, fontFamily: 'avenir')),
          ],
        ),
      ),
    );
  }
}

// return ClipRRect(
//       borderRadius: BorderRadius.circular(10),
//       child: GridTile(
//         child: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pushNamed(
//               ProductDetails.routeName,
//               arguments: product.id,
//               // MaterialPageRoute(builder: (ctx) => ProductDetails(title)),
//             );
//           },
//           child: Image.network(
//             product.imageUrl,
//             fit: BoxFit.cover,
//           ),
//         ),
//         footer: GridTileBar(
//           backgroundColor: Colors.black45,
//           title: Text(product.title),
//           leading: Consumer<Product>(
//             builder: (ctx, product, child) => IconButton(
//               icon: Icon(
//                 // product.isFavorite ? Icons.favorite : Icons.favorite_border,
//                 product.isFavorite ? Icons.favorite : Icons.favorite_border,
//                 // color: Theme.of(context).accentColor,
//                 color: Colors.redAccent,
//               ),
//               onPressed: () {
//                 product.toggleFavorite();
//                 // print('clicked');
//               },
//             ),
//           ),
//           trailing: IconButton(
//             icon: Icon(
//               Icons.shopping_cart_outlined,
//               // color: Theme.of(context).accentColor,
//               color: Colors.redAccent,
//             ),
//             onPressed: () {
//               cart.addItem(product.id, product.price, product.title);
//             },
//           ),
//         ),
//       ),
//     );
