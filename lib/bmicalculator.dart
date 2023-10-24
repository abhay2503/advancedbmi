import 'dart:math';


class CalculatorBrain{
  CalculatorBrain({this.weight,this.height,this.age,required this.gender});

  final int? height;
  final int? age;
  final int? weight;
  final String gender;

  double? bmi;

  String? calculateBMI(){
    bmi=weight! / pow((height! / 100) , 2);
    return bmi?.toStringAsFixed(1);
  }

  String? getResult(){
    if(bmi!<15.0 && age!>=2 && age!<=5 && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<14.0 && age!>=2 && age!<=5 && gender== "Gender.female")
      return "Underweight";


    if(bmi!<16.0 && age!>=6 && age!<=11 && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<15.0 && age!>=6 && age!<=11 && gender== "Gender.female")
      return "Underweight";


    if(bmi!<17.0 && age!>=12 && age!<=19 && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<16.0 && age!>=12 && age!<=19 && gender== "Gender.female")
      return "Underweight";

    if(bmi!<18.5 && age!>=20 && age!<=39 && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<18.5 && age!>=20 && age!<=39 && gender== "Gender.female")
      return "Underweight";


    if(bmi!<22.0 && age!>=40 && age!<=59 && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<21.0 && age!>=40 && age!<=59 && gender== "Gender.female")
      return "Underweight";


    if(bmi!<24.0 && age!>=60 && age!<=79 && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<23.0 && age!>=60 && age!<=79 && gender== "Gender.female")
      return "Underweight";


    if(bmi!<25.0 && age!>=80  && gender== "Gender.male")
      return "UnderWeight";
    else if(bmi!<24.0 && age!>=80 && gender== "Gender.female")
      return "Underweight";




    if(bmi!>=15.0 && bmi!<=23.0 && age!>=2 && age!<=5 && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=14.0 && bmi!<=21.0 && age!>=2 && age!<=5 && gender== "Gender.female")
      return "Normal";


    if(bmi!>=16.0 && bmi!<=24.0 && age!>=6 && age!<=11 && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=15.0 && bmi!<=22.0 && age!>=6 && age!<=11 && gender== "Gender.female")
      return "Normal";


    if(bmi!>=17.0 && bmi!<=25.0 && age!>=12 && age!<=19 && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=16.0 && bmi!<=23.0 && age!>=12 && age!<=19 && gender== "Gender.female")
      return "Normal";

    if(bmi!>=18.5 && bmi!<=24.9 && age!>=20 && age!<=39 && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=18.5 && bmi!<=24.9 && age!>=20 && age!<=39 && gender== "Gender.female")
      return "Normal";


    if(bmi!>=22.0 && bmi!<=27.0 && age!>=40 && age!<=59 && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=21.0 && bmi!<=26.0 && age!>=40 && age!<=59 && gender== "Gender.female")
      return "Normal";


    if(bmi!>=24.0 && bmi!<=29.0 && age!>=60 && age!<=79 && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=23.0 && bmi!<=28.0 && age!>=60 && age!<=79 && gender== "Gender.female")
      return "Normal";


    if(bmi!>=25.0 && bmi!<=30.0 && age!>=80  && gender== "Gender.male")
      return "Normal";
    else if(bmi!>=24.0 && bmi!<=29.0 && age!>=80 && gender== "Gender.female")
      return "Normal";


    //overweight


    if(bmi!>=23.0 && bmi!<=27.0 && age!>=2 && age!<=5 && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=21.0 && bmi!<=25.0 && age!>=2 && age!<=5 && gender== "Gender.female")
      return "Overweight";


    if(bmi!>=24.0 && bmi!<=28.0 && age!>=6 && age!<=11 && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=22.0 && bmi!<=26.0 && age!>=6 && age!<=11 && gender== "Gender.female")
      return "Overweight";


    if(bmi!>=25.0 && bmi!<=29.0 && age!>=12 && age!<=19 && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=23.0 && bmi!<=27.0 && age!>=12 && age!<=19 && gender== "Gender.female")
      return "Overweight";

    if(bmi!>=25.0 && bmi!<=29.9 && age!>=20 && age!<=39 && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=25.0 && bmi!<=29.9 && age!>=20 && age!<=39 && gender== "Gender.female")
      return "Overweight";


    if(bmi!>=27.0 && bmi!<=31.0 && age!>=40 && age!<=59 && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=26.0 && bmi!<=30.0 && age!>=40 && age!<=59 && gender== "Gender.female")
      return "Overweight";


    if(bmi!>=29.0 && bmi!<=33.0 && age!>=60 && age!<=79 && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=28.0 && bmi!<=32.0 && age!>=60 && age!<=79 && gender== "Gender.female")
      return "Overweight";


    if(bmi!>=30.0 && bmi!<=34.0 && age!>=80  && gender== "Gender.male")
      return "Overweight";
    else if(bmi!>=29.0 && bmi!<=33.0 && age!>=80 && gender== "Gender.female")
      return "Overweight";


  //  obese
    if(bmi!>27.0 && age!>=2 && age!<=5 && gender== "Gender.male")
      return "Obese";
    else if(bmi!>25.0 && age!>=2 && age!<=5 && gender== "Gender.female")
      return "Obese";


    if(bmi!>28.0 && age!>=6 && age!<=11 && gender== "Gender.male")
      return "Obese";
    else if(bmi!>26.0 && age!>=6 && age!<=11 && gender== "Gender.female")
      return "Obese";


    if(bmi!>29.0 && age!>=12 && age!<=19 && gender== "Gender.male")
      return "Obese";
    else if(bmi!>27.0 && age!>=12 && age!<=19 && gender== "Gender.female")
      return "Obese";

    if(bmi!>29.9 && age!>=20 && age!<=39 && gender== "Gender.male")
      return "Obese";
    else if(bmi!>29.9 && age!>=20 && age!<=39 && gender== "Gender.female")
      return "Obese";


    if(bmi!>31.0 && age!>=40 && age!<=59 && gender== "Gender.male")
      return "Obese";
    else if(bmi!>30.0 && age!>=40 && age!<=59 && gender== "Gender.female")
      return "Obese";


    if(bmi!>33.0 && age!>=60 && age!<=79 && gender== "Gender.male")
      return "Obese";
    else if(bmi!>32.0 && age!>=60 && age!<=79 && gender== "Gender.female")
      return "Obese";


    if(bmi!>34.0 && age!>=80  && gender== "Gender.male")
      return "Obese";
    else if(bmi!>33.0 && age!>=80 && gender== "Gender.female")
      return "Obese";



  }


}