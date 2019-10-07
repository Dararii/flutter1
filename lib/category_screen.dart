import 'package:flutter/material.dart';
import 'package:flutter1/category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen();

  static const _categoryNames = <String>[
    "Cake 1",
    "Cake 2",
    "Cake 3",
    "Cake 4",
    "Cake 5",
    "Cake 6",
    "Cake 7",
    "Cake 8",
    "Cake 9",
  ];

  Widget _buildCategoryWidget(bool portrait, List<Widget> _categories) {
    if (portrait) {
      return ListView.builder(
        itemBuilder: (BuildContext context, int index) => _categories[index],
        itemCount: _categories.length,
      );
    } else {
      return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3,
        children: _categories,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final categories = <CategoryWidget>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(CategoryWidget(
        name: _categoryNames[i],
        iconLocation: Icons.cake,
      ));
    }

    final listView = Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: _buildCategoryWidget(true, categories),
    );

    return listView;
  }
}
