import 'package:flutter/material.dart';
import 'package:advancedbmi/screen.dart';

class bmiheading extends StatelessWidget {
  const bmiheading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text:'BMI ',
        style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.w600
        ),
        children:[
          TextSpan(
              text: 'Calculator',
              style: TextStyle(
                fontSize:36,
                fontWeight: FontWeight.w600,
                color: Colors.white,

              )
          ),
        ],
      ),

    );
  }
}
