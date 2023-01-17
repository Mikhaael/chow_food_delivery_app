import 'package:chow_food_delivery_app/components/buttons.dart';
import 'package:chow_food_delivery_app/components/or.dart';
import 'package:chow_food_delivery_app/components/text_field.dart';
import 'package:chow_food_delivery_app/utils/color.dart';
import 'package:chow_food_delivery_app/utils/dimens.dart';
import 'package:chow_food_delivery_app/utils/res/res_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../components/routes.dart';
import '../components/size_helpers.dart';
import '../utils/assets.dart';
import '../utils/style.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

const double space = 18.0;

class _RegisterScreenState extends ConsumerState<RegisterScreen> {

  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Material(
      child: Form(
        key: form,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(
            horizontal: displayWidth(context) * 0.05,
            vertical: displayHeight(context) * 0.07,
          ),
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                ResRegisterScreen.newAccount,
                style: sLoginScreenBigTextStyle,
              ),
            ),
            vSpace(space * 0.4),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                ResRegisterScreen.registerInformation,
                style: sLoginScreenSmallTextStyle,
              ),
            ),
            vSpace(space * 1.8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ResRegisterScreen.email,
                  style: sLoginScreenSmallTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                vSpace(space * 0.4),
                EmailField(
                    state: TextFieldState(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                    )
                ),
              ],
            ),
            vSpace(space * 0.9),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ResRegisterScreen.password,
                  style: sLoginScreenSmallTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                vSpace(space * 0.4),
                PasswordField(
                  state: TextFieldState(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
              ],
            ),
              vSpace(space * 0.9),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ResRegisterScreen.confirmPassword,
                    style: sLoginScreenSmallTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  vSpace(space * 0.4),
                  PasswordField(
                    state: TextFieldState(
                      controller: confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                    ),
                  ),
                ],
              ),
            vSpace(space * 2.7),
            secondaryButton(
              text: ResRegisterScreen.createAccount,
              onClick: () {},
              fillColor: kPrimaryColor,
              textColor: Colors.white,
            ),
            vSpace(space * 1.3),
            const Or(),
            vSpace(space * 1.3),
            socialButton(
              image: Assets.googleImage,
              text: ResRegisterScreen.registerWithGoogle,
              onCLick: () {},
              fillColor: Colors.white,
              textColor: kPrimaryColor,
            ),
            vSpace(space * 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ResRegisterScreen.haveAnAccount,
                  style: sLoginScreenSmallTextStyle,
                ),
                hSpace(space * 0.2),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, Routes.login),
                  child: Text(
                    ResRegisterScreen.login,
                    style: sLoginScreenBigTextStyle.copyWith(
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
