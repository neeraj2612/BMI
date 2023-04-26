import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class iconstext extends StatelessWidget {
  iconstext({this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 120.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          label,
          style: kTextLabel

        )
      ],
    );
  }
}