import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 19, 
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "P1,070",
                style: TextStyle(
                  fontSize: 19, 
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
            child: Text(
              "Order Now",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ), 
          ),
        ],
      ),
    );
  }
}