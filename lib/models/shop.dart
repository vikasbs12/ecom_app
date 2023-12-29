import 'package:ecom_app/Pages/cart_page.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{
  final List<Product> _shop =[
  //sale
  Product(
    name: "product  1",
    price: 99.9,
    description: "item description",
    imagePath: 
      ),
        Product(
    name: "product  1",
    price: 99.9,
    description: "item description",
    imagePath: 
      ),
        Product(
    name: "product  1",
    price: 99.9,
    description: "item description",
    imagePath: 
      ),
        Product(
    name: "product  1",
    price: 99.9,
    description: "item description",
    imagePath: 
      ),
  ];
  //user cart
  List<Product> _cart = [];

  //list
  List<Product> get shop => _shop;

  //user cart
  List<Product> get cart => _cart;
  //add item 
  void addtocart(Product item){
    _cart.add(item);
  }
  //remove item
  void removefromcart(Product item){
    _cart.remove(item);
  
  }
}