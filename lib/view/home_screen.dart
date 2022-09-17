import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';
import 'package:mvvm_odc_project/view/component/core/title_logo_app.dart';

import 'component/home/bottom_bar_navigator.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          title: TitleLogoApp(),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: screens[0],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 8,
                  activeColor: primaryColor,
                  iconSize: 24,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: Duration(milliseconds: 400),
                  tabBackgroundColor: Colors.grey[100]!,
                  color: Colors.black,
                  tabs: [
                    GButton(
                      icon: Icons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.newspaper,
                      text: 'News',
                    ),
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                  ],
                  selectedIndex: 0,
                  onTabChange: (index) {}),
            ),
          ),
        ),
      ),
    );
  }
}
