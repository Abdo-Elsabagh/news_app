import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/screen/category_screen.dart';

class CategoryCaed extends StatelessWidget {
  const CategoryCaed({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const CategroyViem();
          },
        ));
      },
      child: Container(
        height: 85,
        width: 165,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(category.image), fit: BoxFit.fill),
          color: Colors.brown,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          category.categoryName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
