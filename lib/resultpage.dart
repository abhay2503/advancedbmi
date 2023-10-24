  import 'package:flutter/material.dart';
  import 'package:advancedbmi/screen.dart';
  import 'package:advancedbmi/constant.dart';
  import 'package:advancedbmi/reusecard.dart';
  import 'package:advancedbmi/BottomButton.dart';

  class ResultPage extends StatelessWidget {
    const ResultPage({required this.BmiResult,required this.resultText});

    final String BmiResult;
    final String resultText;

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child:Container(
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: TitleTextStyle,
                  ),
                )
            ),
            SizedBox(height: 12,),
            Expanded(
              flex: 6,
              child: reusecard(
                decorate: BoxDecoration(
                  color: Colors.transparent,

                  boxShadow: [
                    BoxShadow(
                        blurRadius:2 ,
                        color: Color(0xFF2e323b).withOpacity(0.8),
                        spreadRadius: 5),
                  ],
                  borderRadius: BorderRadius.circular(12.0),

                ),
                cardelement: [
                  SizedBox(height: 20,),
                  Text(
                    '$resultText'.toUpperCase(),
                    style: ResultTextStyle,
                  ),
                  SizedBox(height: 20,),
                  Text(
                  '$BmiResult',
                    style: BMITextStyle,
                  ),
                  SizedBox(height: 70 ,),
                  Center(
                    child: Text(
                      'BMI CATEGORIES',
                      style: TitleTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 14),
                    child: Text(
                      'Male',
                      style: TitleTextStyle1,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label:Center(
                              child: Text(
                                'AGE',
                                style: tableheader,
                              ),
                            ),

                          ),

                          DataColumn(
                            label:Center(
                              child: Text(
                                'UnderWeight',
                                style: tableheader,

                              ),
                            ),

                          ),
                          DataColumn(
                            label:Center(
                              child: Text(
                                'Normal',
                                style: tableheader,
                              ),
                            ),

                          ),
                          DataColumn(
                            label:Center(
                              child: Text(
                                'OverWeight',
                                style: tableheader,
                              ),
                            ),

                          ),
                          DataColumn(
                            label:Center(
                              child: Text(
                                'Obese',
                                style: tableheader,
                              ),
                            ),

                          ),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(
                              Center(
                                child: Text(
                                  '2-5',
                                  style: tablecell,
                                ),
                              )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                      '<15.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                      '15.0-23.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                    '	23.0-27.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                      '>27.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),

                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '6-11',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<16.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '16.0-24.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '24.0-28.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>28.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '12-19 ',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<17.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '17.0-25.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '25.0-29.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>29.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '20-39 ',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<18.5',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '18.5-24.9',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '25.0-29.9	',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>29.9',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '40-59 ',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<22.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '22.0-27.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '27.0-31.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>31.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '60-79',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<24.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '24.0-29.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '29.0-33.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>33.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),

                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '80+',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<25.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '25.0-30.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '30.0-34.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>34.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 14),
                    child: Text(
                      'FEMALE',
                      style: TitleTextStyle1,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: [
                          DataColumn(
                            label:Center(
                              child: Text(
                                'AGE',
                                style: tableheader,
                              ),
                            ),

                          ),

                          DataColumn(
                            label:Center(
                              child: Text(
                                'UnderWeight',
                                style: tableheader,

                              ),
                            ),

                          ),
                          DataColumn(
                            label:Center(
                              child: Text(
                                'Normal',
                                style: tableheader,
                              ),
                            ),

                          ),
                          DataColumn(
                            label:Center(
                              child: Text(
                                'OverWeight',
                                style: tableheader,
                              ),
                            ),

                          ),
                          DataColumn(
                            label:Center(
                              child: Text(
                                'Obese',
                                style: tableheader,
                              ),
                            ),

                          ),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '2-5',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<14.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '14.0-21.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '21.0-25.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>25.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),

                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '6-11',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<15.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '15.0-22.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '22.0-26.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>26.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '12-19 ',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<16.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '16.0-23.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '23.0-27.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>27.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '20-39 ',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<18.5',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '18.5-24.9',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '25.0-29.9	',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>29.9',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '40-59 ',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<21.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '21.0-26.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '26.0-30.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>30.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),


                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '60-79',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<23.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '	23.0-28.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '28.0-32.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>32.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),

                          DataRow(cells: [
                            DataCell(
                                Center(
                                  child: Text(
                                    '80+',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '<24.0',
                                    style: tablecell,
                                  ),
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '24.0-29.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                            DataCell(
                                Text(
                                  '29.0-33.0',
                                  style: tablecell,
                                )
                            ),
                            DataCell(
                                Center(
                                  child: Text(
                                    '>33.0',
                                    style: tablecell,
                                  ),
                                )
                            ),

                          ]),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),


                ],

              ),
            ),
            SizedBox(height: 12,),
            BottomButton(
                buttontext: "RE-CALCULATE",
                onpress: (){
                  Navigator.pop(context);
                }),
            SizedBox(height: 12,)

          ],
        ),
      );

    }
  }
