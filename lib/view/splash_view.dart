import 'package:flutter/material.dart';
import 'package:shopping_app/const.dart';

class SplashUI extends StatefulWidget {
  const SplashUI({super.key});

  @override
  State<SplashUI> createState() => _SplashUIState();
}

class _SplashUIState extends State<SplashUI> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, "homeV");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: firstColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const Spacer(),
                Image.asset(
                  "assets/images/logo.png",
                  width: 350,
                  height: 150,
                ),
                // const SizedBox(
                // height: 4,
                // ),
                Text(
                  "Shopping",
                  style:
                      styleTitleApp.copyWith(color: thirdColor, fontSize: 44),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "shopify app".toUpperCase(),
                  style: const TextStyle(color: colorWhite, fontSize: 12),
                ),
                // const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
