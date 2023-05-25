import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../const.dart';
import 'package:badges/badges.dart' as badges;

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Icon(
            FontAwesomeIcons.list,
            color: firstColor,
            size: 20,
          ),
          const SizedBox(width: 10),
          GradientText(
            "Shopping",
            style: styleTitleApp,
            colors: listOfColors,
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              padding: EdgeInsets.all(8),
              badgeColor: secColor,
            ),
            badgeContent: const Text(
              "2",
              style: TextStyle(
                color: colorWhite,
              ),
            ),
            child: InkWell(
              // InkWell : use for navigate for link somthing as Navitator
              child: const Icon(
                FontAwesomeIcons.shopify,
                size: 32,
                color: secColor,
              ),
              onTap: () {
                Navigator.pushNamed(context, "cartV");
              },
            ),
          ),
        ],
      ),
    );
  }
}
