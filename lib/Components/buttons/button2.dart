import 'package:flutter/material.dart';

import '../../constants/constants.dart';
class TransparentButton extends StatelessWidget {
  const TransparentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: mainColor),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
            'Request a demo',
            style: TextStyle(color: mainColor, fontSize: 14),
          )),
    );
  }
}
