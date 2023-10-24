import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.buttontext,
    required this.onpress
  });

  // final int weightvalue;
  // final int agevalue;
  // final int heightvalue;
  final String buttontext;
  final VoidCallback onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      // default value
      width: double.infinity,
      height: 50,

      child: ElevatedButton(
        onPressed:onpress,

        child: Text(
          '$buttontext',
          style: TextStyle(
              fontSize: 18
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF2FBCF0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      )
      ,
    );
  }
}
