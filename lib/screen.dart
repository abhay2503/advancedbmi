import 'package:advancedbmi/constant.dart';
import 'package:flutter/material.dart';
import 'package:advancedbmi/reusecard.dart';
import 'package:advancedbmi/widthheightcard.dart';
import 'package:advancedbmi/resultpage.dart';
import 'package:advancedbmi/BottomButton.dart';
import 'package:advancedbmi/bmicalculator.dart';

enum Gender{
  male,
  female,
}


class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {

  Gender? selectgender;

  double nonactivewidth=0.0;
  double activewidth=3.0;
  int agevalue=15;
  int heightvalue=130;
  int weightvalue=50;

  void handleValueChangedage(int value){
    agevalue=value;
  }

  void handleValueChangedheight(int value){
    heightvalue=value;
  }
  void handleValueChangedweight(int value){
    weightvalue=value;
  }



  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF24272C),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0XFF2FBCF0),
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
          ),
        ),


      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [


              Row(
                children: [
                  Expanded(
                    child: reusecard(
                    decorate: BoxDecoration(

                      borderRadius: BorderRadius.circular(13.0),

                    ),
                      cardelement: [
                        SizedBox(height: 6,),
                      Container(

                        decoration: BoxDecoration(
                         color: Colors.transparent,
                          shape: BoxShape.circle,

                          boxShadow: [
                            BoxShadow(
                                blurRadius:2 ,
                                color: Color(0xFF2e323b).withOpacity(0.8),
                                spreadRadius: 5),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 40,
                          child: ClipOval(
                            child: ColorFiltered(
                              colorFilter: ColorFilter.mode(
                             selectgender==Gender.male?activeColor:nonactiveColor, // Adjust the opacity value (0.0 to 1.0)
                                BlendMode.srcATop,
                              ),
                              child: Image.asset('images/male.png'), // Provide the image path
                            ),
                          ),


                          backgroundColor: Colors.transparent,


                        ),
                      ),
                        SizedBox(height:12 ,),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white54
                          ),
                        )
                      ],
                      onpress:(){
                      setState(() {
                        selectgender=Gender.male;
                      });
                      } ,
                    ),
                  ),
                  Expanded(
                    child: reusecard(
                      decorate: BoxDecoration(

                        // color:selectgender==Gender.female?activeColor:nonactiveColor,
                        borderRadius: BorderRadius.circular(13.0),
                        // border: Border.all(
                        //     color: Color(0xFF7776FE)
                        //     ,width:selectgender==Gender.female?activewidth:nonactivewidth ),
                      ),
                      cardelement: [
                        Container(

                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,

                            boxShadow: [
                              BoxShadow(
                                  blurRadius:2 ,
                                  color: Color(0xFF2e323b).withOpacity(0.8),
                                  spreadRadius: 5),
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 40,
                            child: ClipOval(
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  selectgender==Gender.female?activeColor:nonactiveColor,// Adjust the opacity value (0.0 to 1.0)
                                  BlendMode.srcATop,
                                ),
                                child: Image.asset('images/female.png'), // Provide the image path
                              ),
                            ),


                            backgroundColor: Colors.transparent,


                          ),
                        ),
                        SizedBox(height:12 ,),
                        Text(
                          'Female',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white54
                          ),
                        )
                      ],
                      onpress: (){
                        setState(() {
                          selectgender=Gender.female;
                        });
                      },
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 9,
              ),
              Widthheightcard(
               name:"Age",
                current: 15,
                onValueChanged: handleValueChangedage,
              ),
              SizedBox(
                height: 40,
              ),
              Widthheightcard(
               name:"Height Cm",
                current: 130,
                onValueChanged: handleValueChangedheight,
              ),
              SizedBox(
                height: 40,
              ),
              Widthheightcard(
               name: "Weight Kgs",
                current: 50,
                onValueChanged: handleValueChangedweight,
              ),
              SizedBox(
                height: 30,
              ),
              BottomButton(
                  buttontext: "CALCULATE",
                  onpress:       (){
                 // print(weightvalue);
                  // print(agevalue);
                 // print(heightvalue);
                    CalculatorBrain calc=CalculatorBrain(height: heightvalue,weight: weightvalue,age: agevalue
                        ,gender:selectgender.toString() );

                 Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultPage(
                   BmiResult: calc.calculateBMI()!,
                   resultText: calc.getResult()!,
                 )));
                 }
              )
            ],
          ),
        ),
      ),
    );
  }

}


