import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';

class ProductItemAppBar extends StatelessWidget {
  const ProductItemAppBar({super.key});

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
              Navigator.pop(context);
            },
            child: const Icon(
              FontAwesomeIcons.backward,
              size: 25,
              color: thirdColor,
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Product",
              style: TextStyle(
                color: secColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.solidHeart,
            color: thirdColor,
          ),
        ],
      ),
    );
  }
}
