import 'package:flutter/material.dart';

import 'package:flutter_grocery_app/pages/product_details_page/product_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Grocery App",
      home: ProductDetails(),
    );
  }
}
