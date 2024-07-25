import 'package:flutter/material.dart';

// Data model for menu items
class MenuItem {
  final String imagePath;
  final String name;
  final String price;

  MenuItem({required this.imagePath, required this.name, required this.price});
}

class MenuWidget extends StatelessWidget {
  // Define your list of menu items
  final List<MenuItem> menuItems = [
    MenuItem(
      imagePath: "images/Baby.jpg",
      name: "Baby Back Ribs",
      price: "P350",
    ),
    MenuItem(
      imagePath: "images/Baked.jpg",
      name: "Baked Mussels",
      price: "P50",
    ),
    MenuItem(
      imagePath: "images/Seafood.jpg",
      name: "Seafood Paella",
      price: "P750",
    ),
    MenuItem(
      imagePath: "images/Pancit.jpg",
      name: "Pancit Canton",
      price: "P900",
    ),
    MenuItem(
      imagePath: "images/Crispy.jpg",
      name: "Crispy Pata",
      price: "P650",
    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical, // Changed to vertical
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: Column(
            children: List.generate(
              menuItems.length,
              (index) => Padding(
                padding: EdgeInsets.symmetric(vertical: 7),
                child: Container(
                  width: double.infinity, // Take full width of SingleChildScrollView
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
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            // Navigate to item page if needed
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(5),
                            child: Image.asset(
                              menuItems[index].imagePath,
                              height: 120,
                            ),
                          ),
                        ),
                        Text(
                          menuItems[index].name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          " ", // Replace with description if needed
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              menuItems[index].price,
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}