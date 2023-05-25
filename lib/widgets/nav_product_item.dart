import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../const.dart';

class NavProductItem extends StatelessWidget {
  const NavProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      color: colorWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GradientText(
                colors: listMixSecBackColors,
                "\$252",
                style: const TextStyle(
                  fontSize: 30,
                  color: firstColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Container(
                width: 50,
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  color: backgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  FontAwesomeIcons.cartPlus,
                  color: colorWhite,
                  size: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
