import 'package:flutter/material.dart';
import 'package:last_bmi_calculator/constants.dart';


class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  const IconContent({
    Key? key,
    required this.label,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100.0,
        ),
        Text(
          label,
          style: kBodyTextStyle,
        ),
      ],
    );
  }
}
