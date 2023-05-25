import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../const.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        for (int i = 0; i < categoriesList.length; i++)
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                // First Row :=
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "-40%",
                        style: TextStyle(
                          color: colorWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const Icon(
                      FontAwesomeIcons.heart,
                      color: secColor,
                    ),
                  ],
                ),
                // Image :=
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "itemProductV");
                  },
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Image.asset(
                      "assets/images/${i + 1}.png",
                      height: 110,
                      width: 110,
                    ),
                  ),
                ),
                // title card
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    categoriesList[i],
                    style: const TextStyle(
                      fontSize: 20,
                      color: secColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // description of card :=
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "descreiption product title",
                    style: TextStyle(
                      fontSize: 15,
                      color: thirdColor,
                    ),
                  ),
                ),
                // = Last Row :=
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$500",
                        style: TextStyle(
                          color: secColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.cartPlus,
                        color: secColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ],
    );
  }
}
