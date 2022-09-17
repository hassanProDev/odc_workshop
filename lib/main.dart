import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/network/dio_helper.dart';
import 'package:mvvm_odc_project/res/shared/theming.dart';
import 'package:mvvm_odc_project/view/home_screen.dart';
import 'package:mvvm_odc_project/view/registration/login_screen.dart';
import 'package:mvvm_odc_project/view/registration/signup_screen.dart';
import 'package:mvvm_odc_project/view/screens/events_screen.dart';
import 'package:mvvm_odc_project/view/screens/final_screens.dart';
import 'package:mvvm_odc_project/view/screens/lacture_screen.dart';
import 'package:mvvm_odc_project/view/screens/midterm_screen.dart';
import 'package:mvvm_odc_project/view/screens/section_screen.dart';

void main() async {
  await DioHelper.init();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignUpScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        SignUpScreen.routeName: (_) => SignUpScreen(),
        LactureScreen.routeName: (_) => LactureScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        FinalsScreen.routeName: (_) => FinalsScreen(),
        MidtermScreen.routeName: (_) => MidtermScreen(),
        SectionScreen.routeName: (_) => SectionScreen(),
        EventScreen.routeName: (_) => EventScreen(),
      },
      theme: MyTheming.lightThem,
    );
  }
}
