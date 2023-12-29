import 'package:ecom_app/components/my_drawer.dart';
import 'package:ecom_app/components/my_product_tile.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {


final Products = context.watch<SHop>().shop;




    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
    
        body: ListView(
          children: [
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: Products.length;
                scrollDirection: axis.horizontal,
                padding: const Edgeinsects.all(15),
                itembuilder: (context , index);
                return MyProductTile(products: product);
              ),
            )
          ],
        ),
        

    );
  }
}