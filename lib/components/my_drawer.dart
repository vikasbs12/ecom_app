import 'package:flutter/material.dart';
import 'my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Shopping title
              MyListTile(
                text: "shop",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),

              MyListTile(
                text: "cart",
                icon: Icons.shopping_cart,
                onTap: () => Navigator.pushNamed(context, '/cart_page'), // Remove the semicolon and fix the closing parenthesis
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
              text: "exit",
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                context, '/intro_page', (route) => false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
