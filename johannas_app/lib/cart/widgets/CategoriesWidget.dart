import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  final List<String> _categories = [
    "Must",
    "Appetizer",
    "Dessert",
    "Drink",
    "Party",
    "House",
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: AlwaysScrollableScrollPhysics(), // Ensure scrolling always enabled
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 600 ? 20 : 5,
            vertical: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center, // Center items horizontally
            children: _categories.map((category) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  category,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
