import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/view/component/core/title_logo_app.dart';
import 'package:mvvm_odc_project/view/component/registration/losgin/login_body.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = 'loginScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          toolbarHeight: 120,
          title: TitleLogoApp(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: LoginBody(),
        ),
      ),
    );
  }
}
