import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:last_bmi_calculator/calculator_brain.dart';
import 'package:last_bmi_calculator/components/bottom_button.dart';
import 'package:last_bmi_calculator/components/reusable_card.dart';
import 'package:last_bmi_calculator/components/rounded_icon_content.dart';
import 'package:last_bmi_calculator/constants.dart';
import 'package:last_bmi_calculator/components/icon_content.dart';
import 'package:last_bmi_calculator/screens/result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // PROPERTIES
  int height = 150;
  int weight = 50;
  int age = 20;

  // BODY
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
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: IconContent(
                      label: 'MAN',
                      icon: Icons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: IconContent(
                      label: 'WOMAN',
                      icon: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kBodyTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm', style: kBodyTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderThemeData(
                        thumbColor: Colors.blue,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 20),
                      overlayShape:
                      RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100.0,
                      max: 200.0,
                      activeColor: Colors.black,
                      inactiveColor: Colors.black54,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: RoundedIconContent(
                      label: 'WEIGHT',
                      value: weight,
                      minus: () {
                        setState(() {
                          weight --;
                        });
                      },
                      plus: () {
                        setState(() {
                          weight ++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kActiveCardColor,
                    cardChild: RoundedIconContent(
                      label: 'AGE',
                      value: age,
                      minus: () {
                        setState(() {
                          age --;
                        });
                      },
                      plus: () {
                        setState(() {
                          age ++;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            label: 'CALCULATE',
            onPressed: () {
              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ResultPage(
                  head: calc.getCalculatorHead(),
                  value: calc.calculatorBMI(),
                  description: calc.getCalculatorDescription(),
                );
              }));
            },
          ),
        ],
      ),
    );
  }
}
