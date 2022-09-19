import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_odc_project/view/registration/login_screen.dart';

import '../../../model/signup_model.dart';
import '../../../network/dio_helper.dart';
import '../../../network/end_points.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignUpModel? signUpModel;
  List<String> gernder = ['m', 'f'];
  String? selectedGender;
  List<String> universityId = ['1', '2', '3', '4'];
  List<String> roledId = ['1', '2', '3', '4'];
  List<String> gradeId = ['1', '2', '3', '4'];
  String? selectedRoled;
  String? selectedUniversity;
  String? selectedGraded;

  void changeGender(String value) {
    selectedGender = value;
    emit(SignupDropDown());
  }

  void changeUniversity(value) {
    selectedUniversity = value;
    emit(SignupDropDown());
  }

  void changeGraded(String value) {
    selectedGraded = value;
    emit(SignupDropDown());
  }

  void changeRoled(String value) {
    selectedRoled = value;
    emit(SignupDropDown());
  }

  SignupCubit() : super(SignupInitial());

  static SignupCubit get(context) => BlocProvider.of(context);

  Future userSignUp(context, json) async {
    emit(SignupLoaded());
    await DioHelper.postData(url: registerEndPoint, data: json).then((value) {
      signUpModel = SignUpModel.fromJson(value.data);
      print(value.data);
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
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
