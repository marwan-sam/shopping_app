import 'package:flutter/material.dart';

Widget PlusMiIcon({
  Color? colorBox,
  Color? colorShadow,
  double spreadRadiuShadow = 1.0,
  double blurRadius = 10.0,
  double sizeIcon = 18.0,
  IconData? icon,
  Color? colorIcon,
}) =>
    Container(
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: colorBox,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colorShadow!,
            spreadRadius: spreadRadiuShadow,
            blurRadius: 10,
          ),
        ],
      ),
      child: Icon(
        icon,
        size: sizeIcon,
        color: colorIcon,
      ),
    );
