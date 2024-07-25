import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {

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
                "P350",
                style: TextStyle(
                  fontSize: 19, 
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          ElevatedButton.icon(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.red)),
            icon: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            ),
            label: Text(
              "Add To Cart",
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