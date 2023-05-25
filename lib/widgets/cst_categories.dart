import 'package:flutter/material.dart';

import '../const.dart';

class CstCategories extends StatelessWidget {
  const CstCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < categoriesList.length; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
              decoration: BoxDecoration(
                color: colorWhite,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/${i + 1}.png",
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    categoriesList[i],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: secColor,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
