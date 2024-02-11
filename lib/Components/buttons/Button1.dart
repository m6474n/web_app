import 'package:flutter/material.dart';
import 'package:web_app/constants/constants.dart';
class ColorButton extends StatelessWidget {
  const ColorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
         color: mainColor,
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
            'Try free demo',
            style: TextStyle(color: Colors.white, fontSize: 14),
          )),
    );
  }
}
