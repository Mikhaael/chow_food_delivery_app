import 'package:chow_food_delivery_app/utils/dimens.dart';
import 'package:chow_food_delivery_app/utils/style.dart';
import 'package:flutter/material.dart';

const double space = 18;

Widget buildPage({
  required String image,
  required String title,
  required String subtitle,
}) => 
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          image,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        vSpace(space * 1.3),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: sOnboardingScreenBigTextStyle,
          ),
        ),
        vSpace(space * 0.4),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtitle,
            style: sOnboardingScreenSmallTextStyle,
          ),
        ),
      ],
    );