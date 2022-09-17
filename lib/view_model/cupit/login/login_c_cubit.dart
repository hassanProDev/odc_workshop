import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mvvm_odc_project/model/login_model.dart';
import 'package:mvvm_odc_project/network/dio_helper.dart';
import 'package:mvvm_odc_project/network/end_points.dart';

import '../../../view/home_screen.dart';

part 'login_c_state.dart';

class LoginCCubit extends Cubit<LoginCState> {
  LoginModel? loginModel;
  static String? token;

  LoginCCubit() : super(LoginCInitial());

  static LoginCCubit get(context) => BlocProvider.of(context);

  Future userLogin(context,
      {required String email, required String password}) async {
    emit(LoginCLoaded());
    await DioHelper.postData(
        url: loginEndPoint,
        data: {'email': email, 'password': password}).then((value) {
      loginModel = LoginModel.fromJson(value.data);

      if (loginModel!.data!.accessToken != '' &&
          loginModel!.data!.accessToken != null) {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
        token = loginModel!.data!.accessToken ?? '';
      }
      print(value.data);
      emit(LoginCSuccess());
    }).catchError((error) {
      emit(LoginCError(error.toString()));
    });
  }

  IconData sufixIcon = Icons.visibility;
  bool isSecure = true;

  void passwordVisibilty() {
    isSecure ? sufixIcon = Icons.visibility_off : sufixIcon = Icons.visibility;
    isSecure = !isSecure;
    emit(LoginCPasswordVisibilty());
  }
}
