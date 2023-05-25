import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/const.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AppBarCart extends StatelessWidget {
  const AppBarCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          // icon
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: const Icon(
              FontAwesomeIcons.backward,
              size: 25,
              color: backgColor,
            ),
          ),
          // text
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GradientText(
              colors: listMixSecBackColors,
              "Cart",
              style: const TextStyle(
                color: secColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          const Spacer(),
          // icon
          InkWell(
            onTap: () {
              // Navigator.pop(context);
            },
            child: const Icon(
              FontAwesomeIcons.ellipsis,
              size: 25,
              color: secColor,
            ),
          ),
        ],
      ),
    );
  }
}
