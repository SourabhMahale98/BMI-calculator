import 'package:BMI/constants.dart';
import 'package:flutter/material.dart';

class   BottomButton extends StatelessWidget {
  final Function ontap;
  final String buttonTitle;
  BottomButton({@required this.buttonTitle, @required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: kBottomContainerHeight,
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 2),
        child: Center(
            child: Text(
          buttonTitle,
          style: kBottomTextStyle,
        )),
      ),
    );
  }
}
