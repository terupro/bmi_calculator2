import 'package:flutter/material.dart';
import 'package:last_bmi_calculator/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI CALCULATOR',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            shadows: <Shadow>[
              Shadow(
                color: Colors.black,
                offset: Offset(2.0, 1.0),
                blurRadius: 10.0,
              ),
            ],
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            fontFamily: 'Hind',
            shadows: <Shadow>[
              Shadow(
                color: Colors.white38,
                offset: Offset(2.0, 1.0),
                blurRadius: 3.0,
              ),
            ],
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
