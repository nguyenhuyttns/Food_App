import 'package:flutter/material.dart';
import './models/category.dart';

class CategoryItem extends StatelessWidget {
  //1-category - 1 categoory object
  Category category;
  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = category.color;
    return Container(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _color.withOpacity(0.6),
              _color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          color: _color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              category.content,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
