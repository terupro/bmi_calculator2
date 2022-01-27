import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:last_bmi_calculator/constants.dart';

class RoundedIconContent extends StatelessWidget {
  final String label;
  final int value;
  final Function()? minus;
  final Function()? plus;
  const RoundedIconContent({
    Key? key,
    required this.label,
    required this.value,
    required this.minus,
    required this.plus
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label, style: kBodyTextStyle),
        Text(value.toString(), style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.minus, color: Colors.black54),
                onPressed: minus
            ),
            SizedBox(width: 10.0),
            FloatingActionButton(
                backgroundColor: Colors.white,
                child: Icon(FontAwesomeIcons.plus, color: Colors.black54),
                onPressed: plus
            ),
          ],
        ),
      ],
    );
  }
}
