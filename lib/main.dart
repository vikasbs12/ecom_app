import 'dart:js';

import 'package:ecom_app/Pages/cart_page.dart';
import 'package:ecom_app/Pages/shop_page.dart';
import 'package:ecom_app/models/shop.dart';
import 'package:ecom_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Pages/intro_page.dart';
void main(){
  runApp(
    ChangeNotifierProvider(
      create: (context)=>Shop(),
      child:const MyApp(),
    ),
  );

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context)=>const IntroPage(),
        '/shop_page' : (context)=>const ShopPage(),
        '/cart_page' : (context)=>const CartPage(),
      },
    );
  }
}