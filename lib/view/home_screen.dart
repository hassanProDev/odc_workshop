import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_odc_project/view/component/home/bottom_bar_navigator.dart';
import 'package:mvvm_odc_project/view_model/cupit/home/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'homeScreen';

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is HomeBottomNave) {
            print('Done');
          }
        },
        builder: (context, state) {
          HomeCubit myCubit = HomeCubit().get(context);
          return SafeArea(
            child: Scaffold(
              body: myCubit.screens[myCubit.screenIndex],
              bottomNavigationBar: CustomBttomBarNav(
                index: myCubit.screenIndex,
                func: (int index) {
                  myCubit.changeScreenIndex(index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
