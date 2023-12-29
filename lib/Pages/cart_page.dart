import 'package:ecom_app/components/my_drawer.dart';
import 'package:flutter/material.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});\
  void removeItemFromCart(BuildContext context){
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [

            Expanded(
              child: ListView.builder(
           
              itemBuilder: (BuildContext context, index) {
                final item = Cart[index];

                return LiistTile(
                  Title: Text(item.name),
                  subtitle: Text(item.price,tostring(),
                  trailing : IconButton(icon: Icon(Icons.remove),)
                  onPressed:()=> removeItemFromCart(context),
                )
              },
            ),)
          ],
        ),
      
    );
  }
}