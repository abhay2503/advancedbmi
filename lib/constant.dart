import 'package:flutter/material.dart';
import 'package:advancedbmi/screen.dart';


Color activeColor=Colors.black.withOpacity(0);
Color nonactiveColor=Colors.black.withOpacity(0.7);



TextStyle gendertextstyle() {
  return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500
  );
}



TextStyle paragraphtextstyle() {
  return TextStyle(
    fontSize: 16,
    color: Color(0xFF5F5A96),
    letterSpacing: 1,
    wordSpacing: 1,
    height: 1.3,
  );
}


const TitleTextStyle = TextStyle(
  fontSize: 33.0,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

const ResultTextStyle = TextStyle(
  color: Color(0XFF2FBCF0),
  fontSize: 30.0,
  fontWeight: FontWeight.bold,
);

const BMITextStyle = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.bold,
  color: Colors.white
);

const BodyTextStyle = TextStyle(
  fontSize: 22.0,
  color: Colors.white
);


const tableheader=TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color:Colors.white
);

const tablecell=TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color:Colors.white70
);

const TitleTextStyle1 = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.w700,
    color: Colors.white54
);
