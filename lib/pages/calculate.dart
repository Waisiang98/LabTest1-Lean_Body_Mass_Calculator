import 'dart:math';

double boer_result=0.0;double james_result=0.0;double hume_result=0.0;
String boer; String james; String hume;
String boerfat; String jamesfat;String humefat;
String boerpercentage;String jamespercentage;String humepercentage;

void Calculate(int gender, int age, double height, double weight){
  if (gender ==1){
    if (age ==1){
      boer=children(height,weight);
      james=children(height,weight);
      hume=children(height,weight);
      double boer1=double.parse(boer);
      double james1=double.parse(james);
      double hume1=double.parse(hume);
      bodyfat(weight,boer1,james1,hume1);
    }
    else if (age ==2){
      boerformulae(height,weight);
      jamesformulae(height,weight);
      humeformulae(height, weight);
      double boer1=double.parse(boer);
      double james1=double.parse(james);
      double hume1=double.parse(hume);
      bodyfat(weight,boer1,james1,hume1);
    }
  }
  else if (gender ==2){
    if(age ==1){
      boer=children(height,weight);
      james=children(height,weight);
      hume=children(height,weight);
      double boer1=double.parse(boer);
      double james1=double.parse(james);
      double hume1=double.parse(hume);
      bodyfat(weight,boer1,james1,hume1);
    }
    else if (age ==2){
      boerfemale_formulae(height,weight);
      jamesfemale_formulae(height,weight);
      humefemale_formulae(height,weight);
      double boer1=double.parse(boer);
      double james1=double.parse(james);
      double hume1=double.parse(hume);
      bodyfat(weight,boer1,james1,hume1);
    }
  }
}

String boerformulae(double height, double weight){
  boer_result= (0.407*weight) + (0.267*height) -19.2;
  boer = boer_result.toString().substring(0,4);
  double percentage=(boer_result/weight)*100;
  boerpercentage=percentage.toString().substring(0,2);
  return boer;
}

String jamesformulae(double height, double weight){
  james_result= (1.1*weight)-(128*(pow((weight/height),2)));
  james = james_result.toString().substring(0,4);
  double percentage=(james_result/weight)*100;
  jamespercentage=percentage.toString().substring(0,2);
  return james;
}

String humeformulae(double height, double weight){
  hume_result= (0.32810*weight)+ (0.33929*height)-29.5336;
  hume = hume_result.toString().substring(0,4);
  double percentage=(hume_result/weight)*100;
  humepercentage=percentage.toString().substring(0,2);
  return hume;
}

String boerfemale_formulae(double height, double weight){
  double boerfemale_result = (0.252*weight) +(0.473*height)-48.3;
  boer=boerfemale_result.toString().substring(0,4);
  double percentage=(boerfemale_result/weight)*100;
  boerpercentage=percentage.toString().substring(0,2);
  return boer;

}
String jamesfemale_formulae(double height, double weight){
  double jamesfemale_result = (1.07*weight)-(148*(pow((weight/height), 2)));
  james=jamesfemale_result.toString().substring(0,4);
  double percentage=(jamesfemale_result/weight)*100;
  jamespercentage=percentage.toString().substring(0,2);
  return james;

}
String humefemale_formulae(double height, double weight){
  double humefemale_result = (0.29569*weight) +(0.41813*height)-43.2933;
  hume=humefemale_result.toString().substring(0,4);
  double percentage=(humefemale_result/weight)*100;
  humepercentage=percentage.toString().substring(0,2);
  return hume;
}

String children(double height, double weight){
  double general_part_result=(0.0215*(pow(weight, 0.6469)))*(pow(height, 0.7236));
  double general_full_result=3.8*general_part_result;
  String general=general_full_result.toString().substring(0,5);
  double percentage= (general_full_result/weight)*100;
  boerpercentage=percentage.toString().substring(0,2);
  jamespercentage=percentage.toString().substring(0,2);
  humepercentage=percentage.toString().substring(0,2);
  return general;
}

void bodyfat(double weight,double boer, double james, double hume){
  double boer_fat = 100-((boer/weight)*100);
  double james_fat = 100-(james/weight)*100;
  double hume_fat = 100-( hume/weight)*100;
  boerfat=BoeyFat(boer_fat);
  jamesfat=jamesFat(james_fat);
  humefat=humeFat(hume_fat);

}

String BoeyFat(double boer_fat){
  String bf=boer_fat.toString();
  return bf.substring(0,2);
}
String jamesFat(double james_fat){
  String bf=james_fat.toString();
  return bf.substring(0,2);
}
String humeFat(double hume_fat){
  String bf=hume_fat.toString();
  return bf.substring(0,2);
}




