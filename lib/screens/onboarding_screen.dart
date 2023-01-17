import 'package:chow_food_delivery_app/components/buttons.dart';
import 'package:chow_food_delivery_app/components/page_view.dart';
import 'package:chow_food_delivery_app/utils/color.dart';
import 'package:chow_food_delivery_app/utils/dimens.dart';
import 'package:chow_food_delivery_app/utils/res/res_profile.dart';
import 'package:chow_food_delivery_app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../components/routes.dart';
import '../components/size_helpers.dart';
import '../utils/assets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

const double space = 18.0;

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() => isLastPage = index == 2);
              },
              children: [
                buildPage(
                  image: Assets.welcome1,
                  title: ResOnboardingScreen.title1,
                  subtitle: ResOnboardingScreen.subtitle1,
                ),
                buildPage(
                  image: Assets.welcome3,
                  title: ResOnboardingScreen.title3,
                  subtitle: ResOnboardingScreen.subtitle3,
                ),
                buildPage(
                  image: Assets.welcome2,
                  title: ResOnboardingScreen.title2,
                  subtitle: ResOnboardingScreen.subtitle2,
                ),
              ],
            ),
          bottomSheet: isLastPage
            ? Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 20
              ),
            child: secondaryButton(
              text: "Get Started",
              onClick: () => Navigator.pushNamed(context, Routes.login),
              fillColor: kPrimaryColor,
              textColor: Colors.white,
            )
          ) : Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    'Skip',
                    style: sButtonTextStyle,
                  ),
                  onTap: () => controller.jumpToPage(2),
                ),
                SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const WormEffect(
                      spacing: 12,
                      dotWidth: 17,
                      dotHeight: 8,
                      dotColor: kDotColor,
                      activeDotColor: kActiveDotColor,
                    ),
                    onDotClicked: (index) => controller.animateToPage(
                        index,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn
                    ),
                  ),
                primaryButton(
                    text: 'Next',
                    onClick: () {},
                    fillColor: kPrimaryColor,
                    textColor: Colors.white,
                ),
              ],
            ),
          ),
    );
  }
}
