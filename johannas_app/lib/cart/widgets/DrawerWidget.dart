// ignore: file_names
import 'package:app/Pages/HomePage.dart';
import 'package:app/cart/CartPage.dart';
import 'package:app/cart/widgets/accountinfo.dart';
import 'package:app/cart/widgets/addressinfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Assuming HomePage.dart exists and contains your home page implementation

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFCC4C4C),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("images/star.png"),
              ),
              accountName: Text(
                "Programmer",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "Programmer@gmail.com",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),

          // ListTile for Home
          ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.red,
            ),
            title: const Text(
              "Home",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              // Navigate to HomePage.dart on tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),

          // Other ListTiles for My Order, My Wish List, Settings, Logout
          ListTile(
            leading: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.red,
            ),
            title: const Text(
              "My Cart",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartPage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.people,
              color: Colors.red,
            ),
            title: const Text(
              "Account",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ProfileInfoPage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(
              CupertinoIcons.location,
              color: Colors.red,
            ),
            title: const Text(
              "Address",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AddressPage()),
              );
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.red,
            ),
            title: const Text(
              "Logout",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
