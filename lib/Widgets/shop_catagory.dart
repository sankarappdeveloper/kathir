import 'package:flutter/material.dart';

class ShopCatagory extends StatelessWidget {
  final String title;
  final String imageUrl;
  // final String title;
  // final String title;

  ShopCatagory(this.title, this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            // Navigator.of(context).pushNamed(
            //   ProductDetails.routeName,
            //   arguments: product.id,
            //   // MaterialPageRoute(builder: (ctx) => ProductDetails(title)),
            // );
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black45,
          title: Text(title),
          leading: IconButton(
            iconSize: 20,
            icon: Icon(
              // product.isFavorite ? Icons.favorite : Icons.favorite_border,
              Icons.favorite_border,
              // color: Theme.of(context).accentColor,
              color: Colors.redAccent,
            ),
            onPressed: () {},
          ),
          trailing: IconButton(
            iconSize: 20,
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.redAccent,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
    // Cli(
    //       child: Card(
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(20.0),
    //     ),
    //     elevation: 5,
    //     child: Container(
    //         decoration: BoxDecoration(
    //           image: DecorationImage(image: NetworkImage(''), fit: BoxFit.cover),
    //           // borderRadius: BorderRadius.circular(20.0),
    //           borderRadius: BorderRadius.all(Radius.circular(20.0)),
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.all(15.0),
    //           child: Center(
    //               child: Text(
    //             title,
    //             style: TextStyle(
    //               fontSize: 15,
    //               color: Colors.blue[900],
    //               fontWeight: FontWeight.bold,
    //             ),
    //           )),
    //         )),
    //   ),
    // );
  }
}
