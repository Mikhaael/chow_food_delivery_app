import 'package:chow_food_delivery_app/utils/style.dart';
import 'package:flutter/material.dart';

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

secondaryBUtton(
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
