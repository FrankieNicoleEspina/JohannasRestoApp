import 'package:flutter/material.dart';

// Define a class to represent each popular item
class PopularItem {
  final String imageAsset;
  final String name;
  final String price;

  PopularItem({
    required this.imageAsset,
    required this.name,
    required this.price,
  });
}

class PopularItemsWidget extends StatelessWidget {
  // Sample data for popular items
  final List<PopularItem> items = [
    PopularItem(
      imageAsset: "images/Baby.jpg",
      name: "Baby Back Ribs",
      price: "\P350",
    ),
    PopularItem(
      imageAsset: "images/Baked.jpg",
      name: "Baked Mussels",
      price: "\P50",
    ),
    PopularItem(
      imageAsset: "images/Seafood.jpg",
      name: "Seafood Paella",
      price: "\P750",
    ),
    PopularItem(
      imageAsset: "images/Pancit.jpg",
      name: "Pancit Canton",
      price: "\P900",
    ),
    PopularItem(
      imageAsset: "images/Crispy.jpg",
      name: "Crispy Pata",
      price: "\P650",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: Row(
            children:
                items.map((item) => PopularItemWidget(item: item)).toList(),
          ),
        ),
      ),
    );
  }
}

// Widget to display each popular item
class PopularItemWidget extends StatelessWidget {
  final PopularItem item;

  PopularItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 170,
        height: 225,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    item.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                item.name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.price,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
