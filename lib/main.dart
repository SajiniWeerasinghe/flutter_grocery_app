import 'package:flutter/material.dart';
import 'package:flutter_grocery_app/pages/home_page/category_page/category_page.dart';

import 'package:flutter_grocery_app/pages/home_page/home_page.dart';

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
      home: CategoryPage(),
    );
  }
}
