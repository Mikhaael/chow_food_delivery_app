import 'package:chow_food_delivery_app/utils/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/routes.dart';

void main() {
  runApp(const ChowFoodDeliveryApp());
}

class ChowFoodDeliveryApp extends StatelessWidget {
  const ChowFoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light().copyWith(
            colorScheme: const ColorScheme.light(
              primary: kPrimaryColor,
              secondary: kBackgroundColor,
            ),
            textTheme: GoogleFonts.ubuntuTextTheme(
              Theme.of(context).textTheme.apply(
                displayColor: kBigText,
                bodyColor: kSmallText,
              ).copyWith(
                button: GoogleFonts.ubuntu(),
              )
            )
          ),
          routes: Routes.routes,
        )
    );
  }
}
