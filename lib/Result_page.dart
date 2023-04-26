import 'package:flutter/material.dart';
import 'constant.dart';
import 'resusable.dart';
import 'input_page.dart';

class Resultpage extends StatelessWidget {
  Resultpage({this.bmiText, this.bmiOverview,this.bmiResult});

  final String bmiResult;
  final String bmiText;
  final String bmiOverview;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),

      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Center(
            child: Container(
              margin: EdgeInsets.only(top: 40.0),
              child: Text('Your Result',
                style: kTitleText,
              ),
            ),
          )),
          Expanded(
            flex: 5,
            child: Reusablecard(
              colour: kActiveCardColour,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiText,style: resultText,),
                  Text(
                   bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(bmiOverview,
                    style: overviewText,
                  ),
                  footerButton(
                    buttontitle: 'RE-CALCULATE',
                    onTap: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));}
                  ),

                ],
              ),

            ),



          )

        ],
      ),
    );
  }
}
