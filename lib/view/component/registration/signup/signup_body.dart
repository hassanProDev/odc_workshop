import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_odc_project/view/component/registration/customTextFormField.dart';
import 'package:mvvm_odc_project/view/registration/login_screen.dart';
import 'package:mvvm_odc_project/view_model/cupit/signup/signup_cubit.dart';

import '../custom_btn.dart';
import '../losgin/break_line.dart';

class SignUpBody extends StatelessWidget {
  var signUpFormKey = GlobalKey<FormState>();
  var emailControler = TextEditingController();
  var passwordControler = TextEditingController();
  var rePasswordControler = TextEditingController();

  var nameControler = TextEditingController();
  var phoneControler = TextEditingController();
  var genderControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(),
      child: BlocConsumer<SignupCubit, SignupState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: signUpFormKey,
              child: Column(
                children: [
                  CustomTextField(
                    controler: nameControler,
                    text: 'Name',
                  ),
                  CustomTextField(
                    text: 'E-Mail',
                    controler: emailControler,
                  ),
                  CustomTextField(
                    controler: passwordControler,
                    isPassword: SignupCubit.get(context).isSecure,
                    func: () {
                      SignupCubit.get(context).passwordVisibilty();
                    },
                    icon: SignupCubit.get(context).sufixIcon,
                    text: 'Password',
                    hasIcon: true,
                  ),
                  CustomTextField(
                    controler: rePasswordControler,
                    text: 'Re-Password',
                    icon: SignupCubit.get(context).sufixIcon,
                    func: () {
                      SignupCubit.get(context).passwordVisibilty();
                    },
                    isPassword: SignupCubit.get(context).isSecure,
                    hasIcon: true,
                  ),
                  CustomTextField(
                    text: 'phone number',
                    controler: phoneControler,
                  ),
                  CustomBtn(
                    function: () {
                      Navigator.pushReplacementNamed(
                          context, LoginScreen.routeName);
                    },
                    text: 'Login',
                    color: Color(0xffff6600),
                    textColor: Colors.white,
                  ),
                  BreakLine(),
                  CustomBtn(
                    function: () async {
                      if (signUpFormKey.currentState!.validate()) {
                        var json = {
                          "name": nameControler.text,
                          "email": emailControler.text,
                          "password": passwordControler.text,
                          "phoneNumber": phoneControler.text,
                          "gender": 'm',
                          'roleId': 2,
                          'universityId': 1,
                          'gradeId': 2
                        };

                        SignupCubit.get(context)
                            .userSignUp(context, json)
                            .then((value) {
                          print(value);
                        }).catchError((onError) {
                          print(onError.toString());
                        });
                      }
                    },
                    text: 'Sign Up',
                    color: Colors.white,
                    textColor: Color(0xffff6600),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
