import 'package:flutter/material.dart';
import 'package:my_food_app/categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food app with navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Food categories'),
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(child: CategoriesPage()),
      ),
    );
  }
}
