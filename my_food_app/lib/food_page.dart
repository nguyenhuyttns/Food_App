import 'package:flutter/material.dart';
import 'package:my_food_app/models/category.dart';

class FoodsPage extends StatelessWidget {
  final Category category;

  // Constructor nhận tham số 'category'
  FoodsPage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foods ${category.content} Page'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Center(
        child: Text(
          'THIS IS SHOW FOOD for ${category.content}',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
