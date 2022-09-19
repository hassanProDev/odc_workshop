import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';
import 'package:mvvm_odc_project/view/component/core/title_logo_app.dart';
import 'package:mvvm_odc_project/view/registration/login_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedSplashScreen(
          duration: 2200,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TitleLogoApp(),
              LinearPercentIndicator(
                barRadius: Radius.circular(10),
                alignment: MainAxisAlignment.center,
                width: 350,
                percent: 1,
                animation: true,
                animationDuration: 3000,
                progressColor: primaryColor,
              ),
            ],
          ),
          nextScreen: LoginScreen(),
        ),
      ),
    );
  }
}
