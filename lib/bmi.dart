import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.height,this.weight});
  int height;
  int weight;
  double _bmi;

String calculateBmi(){
  _bmi = weight / pow(height/100, 2);
  return _bmi.toStringAsFixed(1);
}

String getResult(){
  if(_bmi>=25){
    return 'Overweight';
  }
  else if(_bmi>18.5){
    return 'Normal';
  }
  else{
    return'Underweight';
  }

}

String getOverview(){
  if(_bmi>=25){
    return 'Your BMI is high';
  }
  else if(_bmi>18.5){
    return 'Your BMI is Normal';
  }
  else{
    return'Your BMI is low';
  }




}






}