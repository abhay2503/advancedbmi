  import 'package:flutter/material.dart';

  import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';



  class Widthheightcard extends StatefulWidget {
     Widthheightcard( {required this.name,required this.current,required this.onValueChanged,});

    // final List<Widget> cardelement;
     final String name;
     int current;
       final ValueChanged<int> onValueChanged;

    @override
    State<Widthheightcard> createState() => _WidthheightcardState();

  }

  class _WidthheightcardState extends State<Widthheightcard> {
    RulerPickerController? _rulerPickerController;

    // int currentValue=50;



    @override

    void initState() {
      // TODO: implement initState
      super.initState();
      _rulerPickerController=RulerPickerController(value: 1);
    }

    Widget build(BuildContext context) {
      return Flexible(
        fit: FlexFit.loose,
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                    text: widget.name,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    )
                ),
              ),
            ),
            SizedBox(height: 12,),
            Container(

              decoration: BoxDecoration(
                  color: Colors.transparent,

                boxShadow: [
                  BoxShadow(
                      blurRadius:2 ,
                      color: Color(0xFF2e323b).withOpacity(0.8),
                      spreadRadius: 5),
                ],
                  borderRadius: BorderRadius.circular(12.0),

              ),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Container(
                       width:70.0,
                       height: 60.0,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(18),
                         color:Colors.black38
                       ),
                       child: Center(
                         child: Text(
                           '${widget.current}',
                           style: TextStyle(
                             fontSize: 30,
                             color: Colors.white,
                             fontWeight: FontWeight.w600
                           ),
                         ),
                       ),
                     ),

                      SizedBox(
                        width: 50,
                      ),
                      RulerPicker(

                        rulerBackgroundColor: Colors.transparent,
                        controller: _rulerPickerController!,
                        beginValue: 0,
                        endValue: 900,
                        initValue: widget.current,
                        scaleLineStyleList: [
                          ScaleLineStyle(
                              color: Colors.grey, width: 1.5, height: 30, scale: 0),
                          ScaleLineStyle(
                              color: Color(0XFF2FBCF0), width: 1, height: 25, scale: 5),
                          ScaleLineStyle(
                              color: Colors.grey, width: 1, height: 15, scale: -1)
                        ],
                        // onBuildRulerScalueText: (index, scaleValue) {
                        //   return ''.toString();
                        // },
                        // onValueChange: (value) {
                        //   setState(() {
                        //     widget.current = value;
                        //
                        //   });
                        // },
                        onValueChange: (value){
                          setState( () {
                            widget.current = value;
                          });
                          widget.onValueChanged(value);
                        },
                        width: 200,
                        height: 80,
                        rulerMarginTop: 8,

                        // marker: Container(
                        //
                        //     decoration: BoxDecoration(
                        //         color: Colors.transparent,
                        //         borderRadius: BorderRadius.circular(5))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }

