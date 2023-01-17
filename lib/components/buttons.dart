import 'package:chow_food_delivery_app/utils/color.dart';
import 'package:chow_food_delivery_app/utils/res/res_profile.dart';
import 'package:chow_food_delivery_app/utils/style.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';


const double space = 18.0;

primaryButton(
    {required String text,
      required VoidCallback onClick,
      required Color fillColor,
      required Color textColor,
      double borderRadius = 8,
      MainAxisAlignment viewAlignment = MainAxisAlignment.center,
      TextStyle? textStyle,
      FontWeight fontWeight = FontWeight.w500}) =>
    InkWell(
      onTap: onClick,
      child: Container(
        width: 89,
        height: 48,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: viewAlignment,
          children: [
            Text(
              text,
              style: textStyle ??
                  sButtonTextStyle.copyWith(
                    color: textColor,
                    fontWeight: fontWeight,
                    fontSize: 18.0,
                  ),
            ),
          ],
        ),
      ),
    );

secondaryButton(
    {required String text,
      required VoidCallback onClick,
      required Color fillColor,
      required Color textColor,
      double borderRadius = 8,
      MainAxisAlignment viewAlignment = MainAxisAlignment.center,
      TextStyle? textStyle,
      FontWeight fontWeight = FontWeight.w500}) =>
    InkWell(
      onTap: onClick,
      child: Container(
        width: 382,
        height: 56,
        decoration: BoxDecoration(
          color: fillColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: viewAlignment,
          children: [
            Text(
              text,
              style: textStyle ??
                  sButtonTextStyle.copyWith(
                    color: textColor,
                    fontWeight: fontWeight,
                    fontSize: 18.0,
                  ),
            ),
          ],
        ),
      ),
    );

socialButton({
  required String image,
  required String text,
  required VoidCallback? onCLick,
  required Color fillColor,
  required Color textColor,
}) =>
    InkWell(
      onTap: onCLick,
      child: Material(
        child: Container(
          width: 382,
          height: 56,
          decoration: BoxDecoration(
            border: Border.all(
              color: kPrimaryColor,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8),
            color: fillColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(image),
                width: 24.0,
                height: 24.0,
              ),
              hSpace(space * 0.4),
              Text(
                text,
                style: sLoginScreenBigTextStyle.copyWith(
                  fontSize: 18,
                  color: textColor,
                ),
              )
            ],
          )
        ),
      ),
    );
