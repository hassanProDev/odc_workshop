// import 'package:bloc/bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';
// import 'package:mvvm_odc_project/model/signup_model.dart';
// import 'package:mvvm_odc_project/network/end_points.dart';
// import 'package:mvvm_odc_project/view/registration/login_screen.dart';
//
// import '../../../network/dio_helper.dart';
//
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/signup_model.dart';
import '../../../network/dio_helper.dart';
import '../../../network/end_points.dart';
import '../../../view/home_screen.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignUpModel? signUpModel;

  SignupCubit() : super(SignupInitial());

  static SignupCubit get(context) => BlocProvider.of(context);

  Future userSignUp(context, json) async {
    emit(SignupLoaded());
    await DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      signUpModel = SignUpModel.fromJson(value.data);

      Navigator.pushReplacementNamed(context, HomeScreen.routeName);

      emit(SignupSuccess());
      print('ana gameeeeeed');
    }).catchError((error) {
      emit(SignupError(error.toString()));
      print('bazt 5aleeeeees bazt bazeeeet');
    });
  }

  IconData sufixIcon = Icons.visibility;
  bool isSecure = true;

  void passwordVisibilty() {
    isSecure ? sufixIcon = Icons.visibility_off : sufixIcon = Icons.visibility;
    isSecure = !isSecure;
    emit(SignUpPasswordVisibilty());
  }
}

//
// class SignupCubit extends Cubit<SignupState> {
//   SignUpModel? signUpModel;
//
//   SignupCubit() : super(SignupInitial());
//
//   static SignupCubit get(context) => BlocProvider.of(context);
//
//   Future userSignUp(context,
//       {
//       required String name,
//       required String email,
//       required String password,
//       required String phone,
//       })async {
//     emit(SignupInitial());
//     await DioHelper.postData(url: registerEndPoint, data: {
//       'name': name,
//       'email': email,
//       'password': password,
//       'phoneNumber': phone,
//       'gender': 'm',
//       // "universityId": 1,
//       // "gradeId": 4,
//       "roleId": 4
//     }).then((value) {
//       // emit(SignupLoaded());
//       print(value.data);
//       signUpModel = SignUpModel.fromJson(value.data);
//       Navigator.pushReplacementNamed(context, LoginScreen.routeName);
//
//       // if (signUpModel!.message == 'Added Successfully'&&signUpModel!.message !=null) {
//       //   Navigator.pushReplacementNamed(context, LoginScreen.routeName);
//       //   print(signUpModel!.message);
//       // } else {
//       //   print(signUpModel!.message);
//       // }
//       emit(SignupSuccess());
//     }).catchError((e) {
//       emit(SignupError(e.toString()));
//     });
//   }
//
//   IconData sufixIcon = Icons.visibility;
//   bool isSecure = true;
//
//   void passwordVisibilty() {
//     isSecure ? sufixIcon = Icons.visibility_off : sufixIcon = Icons.visibility;
//     isSecure = !isSecure;
//     emit(SignUpPasswordVisibilty());
//   }
// }
