import 'package:flutter/material.dart';
import 'package:last_bmi_calculator/components/bottom_button.dart';
import 'package:last_bmi_calculator/components/reusable_card.dart';
import 'package:last_bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  final String head;
  final String value;
  final String description;
  const ResultPage({
    Key? key,
    required this.head,
    required this.value,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Padding(
                  padding: EdgeInsets.only(top: 13.0),
                  child: Text('YOUR RESULT', style: kYourResultTextStyle, textAlign: TextAlign.center),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(head, style: kResultHeadStyle),
                  Text(value, style: kResultValueStyle),
                  Text(description, style: kResultDescriptionStyle)
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RECALCULATE',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
