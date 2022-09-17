import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/view/component/core/title_logo_app.dart';
import 'package:mvvm_odc_project/view/component/registration/signup/signup_body.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = 'signup';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 80,
          title: TitleLogoApp(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SignUpBody(),
        ),
      ),
    );
  }
}
