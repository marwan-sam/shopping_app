import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/const.dart';

import '../utils/comp.dart';
import '../widgets/app_bar_product.dart';
import '../widgets/nav_product_item.dart';

class ProductItemUI extends StatelessWidget {
  const ProductItemUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgColor,
      body: ListView(
        children: [
          const ProductItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              "assets/images/2.png",
              height: 255,
            ),
          ),
          ClipPath(
            clipper: WaveClipperTwo(reverse: true),
            child: Container(
              color: colorWhite,
              height: 300,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Title Pro
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Text(
                          "Title Product",
                          style: TextStyle(
                            fontSize: 30,
                            color: secColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 9),

                  // ratting and add-miuns product :=
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RatingBar.builder(
                          initialRating: 4,
                          minRating: 1,
                          direction: Axis.horizontal,
                          itemCount: 5,
                          itemSize: 20,
                          itemPadding: const EdgeInsets.all(5),
                          itemBuilder: (context, _) => const Icon(
                            FontAwesomeIcons.solidHeart,
                            color: secColor,
                          ),
                          onRatingUpdate: (index) {},
                        ),

                        // - part of + , - :

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
                  const SizedBox(height: 9),

                  // description of :
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "this is descreiption for product title, it's amizing product to see it .. we can see else of colors and sizes for this product",
                      style: TextStyle(
                        fontSize: 15,
                        color: thirdColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 9),

                  // Size :
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      children: [
                        const Text(
                          "Size : ",
                          style: TextStyle(
                            color: secColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            for (int i = 1; i <= 6; i++)
                              Container(
                                width: 25,
                                height: 25,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: colorWhite,
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  i.toString(),
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    color: secColor,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 9),
                  // Color :
                  Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Row(
                      children: [
                        const Text(
                          "Color : ",
                          style: TextStyle(
                            color: secColor,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            for (int i = 0; i < colorListProduct.length; i++)
                              Container(
                                width: 25,
                                height: 25,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 4),
                                decoration: BoxDecoration(
                                  color: colorListProduct[i],
                                  borderRadius: BorderRadius.circular(30),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.6),
                                      spreadRadius: 2,
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                alignment: Alignment.center,
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavProductItem(),
    );
  }
}
