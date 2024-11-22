import 'package:flutter/material.dart';
import './food_page.dart';
import './models/category.dart';

class CategoryItem extends StatelessWidget {
  Category category;

  CategoryItem({required this.category});

  @override
  Widget build(BuildContext context) {
    Color _color = category.color;

    return InkWell(
      onTap: () {
        print("Tap to category: ${this.category.content}");
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => FoodsPage(
              category: category,
            ), // Đảm bảo tên chính xác
          ),
        );
      },
      splashColor: Colors.purpleAccent,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              _color.withOpacity(0.6),
              _color,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
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
