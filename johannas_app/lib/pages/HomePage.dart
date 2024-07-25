import 'package:app/cart/widgets/AppBarWidget.dart';
import 'package:app/cart/widgets/CategoriesWidget.dart';
import 'package:app/cart/widgets/DrawerWidget.dart';
import 'package:app/cart/widgets/MenuWidget.dart';
import 'package:app/cart/widgets/PopularItemsWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Custom App Bar Widget
          AppBarWidget(),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFCC4C4C).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "What would you like?",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.filter_list),
                    onPressed: () {
                      // Implement filter action here
                    },
                  ),
                ],
              ),
            ),
          ),

          // Categories Widget (assuming CategoriesWidget is a custom widget)
          CategoriesWidget(),
          const Divider(
            color: Color(0xFFCC4C4C),
          ),

          // Popular Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Popular Items Widget (assuming PopularItemsWidget is a custom widget)
          PopularItemsWidget(),

          // Newest Items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              "Newest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Newest Items Widget (assuming NewestItemsWidget is a custom widget)
          const MenuWidget(),
        ],
      ),
      // Drawer and FloatingActionButton remain unchanged from your original code
      drawer: DrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to cart page
          Navigator.pushNamed(context, "cartPage");
        },
        child: const Icon(
          Icons.shopping_cart,
          size: 28,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
