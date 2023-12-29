import 'package:ecom_app/components/my_button.dart';
import 'package:flutter/material.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Icon(Icons.shopping_bag,
          size: 72,
          color: Theme.of(context).colorScheme.inversePrimary),
      
          const SizedBox(
            height: 25,
          ),
          const Text(
            "minimal Shop",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 10),
          Text("premium Quality Products",
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary),
          ),
            const SizedBox(
            height: 25
          ),
          MyButton(
            onTap: ()=>Navigator.pushNamed(context, '/shop_page'),
            child:const Icon(Icons.arrow_forward)),
        ],
      ),
    );
  }
}