import 'package:flutter/material.dart';
import 'package:advancedbmi/screen.dart';

class reusecard extends StatelessWidget {
  const reusecard({required this.decorate,required this.cardelement,this.onpress});


  final Decoration decorate;
  final List<Widget> cardelement;
  final VoidCallback? onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpress,
      child: SingleChildScrollView(
        child: Container(

          margin: EdgeInsets.all(13.0),

          decoration: decorate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: cardelement

          )
        ),
      ),
    );
  }
}
