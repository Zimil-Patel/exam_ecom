import 'package:exam_ecom/view/screen/cart/cart_screen.dart';
import 'package:exam_ecom/view/screen/filter/FilterScreen.dart';
import 'package:exam_ecom/view/screen/home/home_screen.dart';
import 'package:exam_ecom/view/screen/product/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home' : (context) => HomeScreen(),
        '/filter' : (context) => FilterScreen(),
        '/product' : (context) => ProductScreen(),
        '/cart' : (context) => CartScreen(),
      },
    )
  );
}
