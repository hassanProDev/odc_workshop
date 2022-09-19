import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../view/component/home/home_body.dart';
import '../../../view/screens/news/news_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  HomeCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    HomeBody(),
    NewsScreen(),
    HomeBody(),
  ];

  int screenIndex = 0;

  void changeScreenIndex(int index) {
    screenIndex = index;
    emit(HomeBottomNave());
  }
}
