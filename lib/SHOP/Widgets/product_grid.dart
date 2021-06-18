// import 'package:afans_ui/Providers/product.dart';
// import 'package:afans_ui/Providers/products_provider.dart';
// import 'package:afans_ui/Widgets/poduct_item.dart';
import 'package:flutter/material.dart';
import 'package:project_1/SHOP/Providers/products_provider.dart';
import 'package:project_1/SHOP/Widgets/poduct_item.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductGrid extends StatelessWidget {
  // const ProductGrid({
  //   Key key,
  //   @required this.loadedProducts,
  // }) : super(key: key);
  final bool showFav;
  ProductGrid(this.showFav);
  // final List<Product> loadedProducts;
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = showFav ? productData.favoriteItems : productData.items;
    return StaggeredGridView.countBuilder(
        // padding: const EdgeInsets.all(10),
        itemCount: products.length,
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // childAspectRatio: 3 / 2
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
              // create: (c) => products[i],
              value: products[i],
              child: ProductItem(
                  // products[i].id, products[i].title, products[i].imageUrl
                  ),
            ));
  }
}
