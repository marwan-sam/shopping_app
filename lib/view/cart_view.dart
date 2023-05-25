import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';
import '../utils/comp.dart';
import '../widgets/app_bar_cart.dart';
import '../widgets/nav_total_cards.dart';
import '../widgets/orders_card.dart';

class CartUI extends StatelessWidget {
  const CartUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Total Card   ===
      bottomNavigationBar: const NavTotalCards(),

      body: ListView(
        children: [
          const AppBarCart(),

          ///  items card body  ===
          Container(
            // height: 700,
            decoration: const BoxDecoration(
              color: secColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                ///  items card  ===
                const SizedBox(height: 10),
                const OrdersCard(),

                ///  last text for add Coupon Code  ===

                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      PlusMiIcon(
                        colorBox: secColor,
                        colorShadow: secColor,
                        colorIcon: colorWhite,
                        icon: FontAwesomeIcons.squarePlus,
                        sizeIcon: 20,
                      ),
                      const Text(
                        " Add Coupon Code",
                        style: TextStyle(
                          color: colorWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
