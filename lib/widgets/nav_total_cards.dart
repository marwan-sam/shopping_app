import 'package:flutter/material.dart';
import 'package:shopping_app/const.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NavTotalCards extends StatelessWidget {
  const NavTotalCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 120,
      color: colorWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GradientText(
                "TOTAL :",
                colors: listMixSecBackColors,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: firstColor,
                ),
              ),
              const Spacer(),
              GradientText(
                colors: listMixSecBackColors,
                "\$252",
                style: const TextStyle(
                  fontSize: 30,
                  color: firstColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "creditCardV");
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: backgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                "Check Out",
                style: TextStyle(
                  fontSize: 20,
                  color: colorWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
