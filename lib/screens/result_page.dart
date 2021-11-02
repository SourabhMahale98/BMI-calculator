import 'package:BMI/constants.dart';
import 'package:BMI/components/reuseable_card.dart';
import 'package:flutter/material.dart';

import '../components/bottom_Button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({
    @required this.getResult,
    @required this.getInterpret,
    @required this.getBmi,
  });
  final String getResult;
  final String getInterpret;
  final String getBmi;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text("BMI-Calculator"),
        ),
        backgroundColor: kActiveCardColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              colors: kActiveCardColor,
              onPress: () {},
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    getBmi,
                    style: kBMITextStyle,
                  ),
                  Text(
                    getInterpret,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: "RE-CALCULATE",
            ontap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
