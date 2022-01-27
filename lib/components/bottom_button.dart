import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const BottomButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        height: 90.0,
        decoration: BoxDecoration(
          color: Colors.white38,
        ),
      ),
    );
  }
}
