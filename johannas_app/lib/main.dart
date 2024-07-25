import 'package:app/cart/widgets/MenuWidget.dart';
import 'package:app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/HomePage.dart';
import 'package:app/cart/CartPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F3),
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => const WelcomeScreen(),
        "/homePage": (context) => const HomePage(),
        "cartPage": (context) => CartPage(),
        "itemPage": (context) => const MenuWidget(),
      },
    );
  }
}
