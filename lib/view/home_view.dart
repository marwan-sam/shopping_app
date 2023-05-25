import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../const.dart';
import '../widgets/body_of_home_ui.dart';
import 'cart_view.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  // Screens :=
  final BodyOfHomeUI page1 = const BodyOfHomeUI();
  final CartUI page2 = const CartUI();
  // final ListUI page3 = ListUI();

  Widget pageChooser(int _page) {
    switch (_page) {
      case 0:
        return page1;
      case 1:
        return page2;
      // case 2:
      // return page3;
    }
    return page1;
  }

  // --
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageChooser(page),
      // ? Bottom App Bar : ==========
      bottomNavigationBar: page == 1
          ? null
          : CurvedNavigationBar(
              backgroundColor: thirdColor,
              height: 50,
              color: colorWhite,
              items: const [
                Icon(
                  FontAwesomeIcons.house,
                  size: 25,
                  color: secColor,
                ),
                Icon(
                  FontAwesomeIcons.cartPlus,
                  size: 25,
                  color: secColor,
                ),
                Icon(
                  FontAwesomeIcons.list,
                  size: 25,
                  color: secColor,
                ),
              ],
              onTap: (index) {
                setState(() {
                  page = index;
                });
              },
            ),
    );
  }
}
