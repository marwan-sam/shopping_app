import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/widgets/txt_feild.dart';

import '../const.dart';
import 'app_bar_home.dart';
import 'card_items.dart';
import 'cst_categories.dart';

class BodyOfHomeUI extends StatelessWidget {
  const BodyOfHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // ? App Bar : ==========
        const AppBarHome(),
        const SizedBox(height: 10),
        Container(
          // height: 500,
          decoration: const BoxDecoration(
            color: backgColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              // ? Search Bar : ==========
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: TxtFeild(
                  colorBorder: secColor,
                  colorBorderFocused: thirdColor,
                  radius: 35,
                  styleInput: const TextStyle(color: colorWhite, fontSize: 20),
                  textHint: 'Search here...',
                  textHintStyle:
                      const TextStyle(color: colorWhite, fontSize: 20),
                  suffix: FontAwesomeIcons.microphone,
                  colorIcons: colorWhite,
                  prefix: FontAwesomeIcons.searchengin,
                  sizeIconPrefix: 23,
                  sizeIconSuffix: 23,
                ),
              ),
              // ? Categories Bar : ==========
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: const Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: colorWhite,
                  ),
                ),
              ),
              // ? Categories List : ==========
              const CstCategories(),
              // ? Best Seller Bar : ==========
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: const Text(
                  "Best Seller",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: colorWhite,
                  ),
                ),
              ),
              // ? View Items Card : ==========
              const CardItems(),
            ],
          ),
        ),
      ],
    );
  }
}
