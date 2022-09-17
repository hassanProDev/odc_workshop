import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';
import 'package:mvvm_odc_project/view/screens/events_screen.dart';
import 'package:mvvm_odc_project/view/screens/final_screens.dart';
import 'package:mvvm_odc_project/view/screens/lacture_screen.dart';
import 'package:mvvm_odc_project/view/screens/midterm_screen.dart';
import 'package:mvvm_odc_project/view/screens/section_screen.dart';

class HomeModel {
  String? title;
  Icon? icon;
  Function? func;

  HomeModel({this.title, this.icon, this.func});
}

double size = 40;
List<HomeModel> homeData = [
  HomeModel(
      title: 'Lacture',
      icon: Icon(
        Icons.book,
        color: primaryColor,
        size: size,
      ),
      func: (BuildContext context) {
        Navigator.pushNamed(context, LactureScreen.routeName);
      }),
  HomeModel(
      title: 'Sections',
      icon: Icon(
        Icons.group,
        color: primaryColor,
        size: size,
      ),
      func: (BuildContext context) {
        Navigator.pushNamed(context, SectionScreen.routeName);
      }),
  HomeModel(
      title: 'Midterms',
      icon: Icon(
        Icons.file_present_rounded,
        color: primaryColor,
        size: size,
      ),
      func: (BuildContext context) {
        Navigator.pushNamed(context, MidtermScreen.routeName);
      }),
  HomeModel(
      title: 'Finals',
      icon: Icon(
        Icons.task,
        color: primaryColor,
        size: size,
      ),
      func: (BuildContext context) {
        Navigator.pushNamed(context, FinalsScreen.routeName);
      }),
  HomeModel(
      title: 'Events',
      icon: Icon(
        Icons.event,
        color: primaryColor,
        size: size,
      ),
      func: (BuildContext context) {
        Navigator.pushNamed(context, EventScreen.routeName);
      }),
  HomeModel(
      title: 'Notes',
      icon: Icon(
        Icons.note_add_sharp,
        color: primaryColor,
        size: size,
      ),
      func: (BuildContext context) {
        // Navigator.pushNamed(context,);
      }),
];
