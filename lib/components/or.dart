import 'package:chow_food_delivery_app/utils/res/res_profile.dart';
import 'package:chow_food_delivery_app/utils/style.dart';
import 'package:flutter/material.dart';

class Or extends StatelessWidget {
  const Or({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ResLoginScreen.or,
          style: sLoginScreenSmallTextStyle,
        )
      ],
    );
  }
}
