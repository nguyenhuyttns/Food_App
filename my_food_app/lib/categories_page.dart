import 'package:flutter/material.dart';

class CategoriesPage extends StatelessElement {
  CategoriesPage(super.widget);

  @override
  Widget build() {
    return GridView(
      children: [],
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
