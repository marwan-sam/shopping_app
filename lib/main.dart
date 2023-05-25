import 'package:flutter/material.dart';
import 'package:shopping_app/view/cart_view.dart';
import 'package:shopping_app/view/payments_card_view.dart';
import 'package:shopping_app/view/product_view.dart';
import 'package:shopping_app/wakelockScreen.dart';

import 'const.dart';
import 'view/home_view.dart';

void main() {
  NotLockScreen();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: colorWhite,
      ),
      routes: {
        "/": (context) => const HomeUI(),
        "cartV": (context) => const CartUI(),
        "itemProductV": (context) => const ProductItemUI(),
        "creditCardV": (context) => PaymentsCreditCard(),
      },
    );
  }
}
