import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/const.dart';

import '../utils/comp.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < categoriesList.length - 2; i++)
          Container(
            height: 120,
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  onChanged: (index) {},
                  activeColor: secColor,
                ),
                Container(
                  height: 80,
                  width: 90,
                  margin: const EdgeInsets.only(left: 5),
                  child: Image.asset("assets/images/${i + 1}.png"),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        categoriesList[i],
                        style: const TextStyle(
                          fontSize: 20,
                          color: secColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "22\$",
                        style: TextStyle(
                          fontSize: 15,
                          color: thirdColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 5),
                      const Icon(
                        FontAwesomeIcons.trashCan,
                        color: backgColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Row(
                          children: [
                            PlusMiIcon(
                              colorBox: foColor,
                              colorShadow: colorWhite,
                              colorIcon: backgColor,
                              icon: FontAwesomeIcons.circlePlus,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: const Text(
                                "01",
                                style: TextStyle(
                                  color: secColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            PlusMiIcon(
                              colorBox: foColor,
                              colorShadow: colorWhite,
                              colorIcon: backgColor,
                              icon: FontAwesomeIcons.circleMinus,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
