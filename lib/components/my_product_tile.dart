import 'package:ecom_app/models/product.dart';
import 'package:ecom_app/models/shop.dart';
import 'package:flutter/material.dart';
class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({super.key, required this.product});
  void addtocart(BuildContext context){
    showDialog(context: context, builder: (context)=>AlertDialog(
      content: Text("add this  item to your cart?"),
      actions:
      MaterialButton(
        onPressed: () => Navigator.pop(context)
          child : Text("cancel")
        ),
      ),
       MaterialButton(
        onPressed: () => Navigator.pop(context)
         context.read<Shop>().addtocart(product);

    ))
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
     width : double.infinity,
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(20),
      width: 300,
      child: Column(
        children: [
          Icon(Icons.favorite),
          SizedBox(
            height: 10
          ),
          Text(product.name),
           SizedBox(
            height: 10
          ),
          Text(product.description),
           SizedBox(
            height: 10
          ),
           Text(product.price.toStringAsFixed(2)),
            SizedBox(
            h: 10
          ),
          Row(
            children: [
              Text(
                '\$'+product.price.toString(),
                
              )
            ],
          )
          Container(
            decoration: BoxDecoration(
              color:  Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(onPressed: () => addtocart(),
            icon: Icon(Icons.add),),
          )

        ],
      ),
    );
  }
}