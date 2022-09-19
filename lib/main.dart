import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/network/dio_helper.dart';
import 'package:mvvm_odc_project/res/shared/theming.dart';
import 'package:mvvm_odc_project/view/home_screen.dart';
import 'package:mvvm_odc_project/view/registration/login_screen.dart';
import 'package:mvvm_odc_project/view/registration/signup_screen.dart';
import 'package:mvvm_odc_project/view/screens/events/events_screen.dart';
import 'package:mvvm_odc_project/view/screens/final/final_screens.dart';
import 'package:mvvm_odc_project/view/screens/lacture/lacture_screen.dart';
import 'package:mvvm_odc_project/view/screens/midterm/midterm_screen.dart';
import 'package:mvvm_odc_project/view/screens/note/notes_screen.dart';
import 'package:mvvm_odc_project/view/screens/section/section_screen.dart';
import 'package:mvvm_odc_project/view/screens/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        LoginScreen.routeName: (_) => LoginScreen(),
        SignUpScreen.routeName: (_) => SignUpScreen(),
        LactureScreen.routeName: (_) => LactureScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        FinalsScreen.routeName: (_) => FinalsScreen(),
        MidtermScreen.routeName: (_) => MidtermScreen(),
        SectionScreen.routeName: (_) => SectionScreen(),
        EventScreen.routeName: (_) => EventScreen(),
        SplashScreen.routeName: (_) => SplashScreen(),
        NoteScreen.routeName: (_) => NoteScreen(),
      },
      theme: MyTheming.lightThem,
    );
  }
}
