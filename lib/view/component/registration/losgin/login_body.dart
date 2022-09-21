import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';
import 'package:mvvm_odc_project/view/registration/signup_screen.dart';

import '../../../../view_model/cupit/login/login_c_cubit.dart';
import '../../../home_screen.dart';
import '../customTextFormField.dart';
import '../custom_btn.dart';
import 'break_line.dart';

class LoginBody extends StatelessWidget {
  var loginformKey = GlobalKey<FormState>();
  var emailControler = TextEditingController();
  var passwordControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => LoginCCubit(),
      child: BlocConsumer<LoginCCubit, LoginCState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Form(
              key: loginformKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(
                    controler: emailControler,
                    text: 'E-Mail',
                  ),
                  CustomTextField(
                    isPassword: LoginCCubit.get(context).isSecure,
                    controler: passwordControler,
                    text: 'Password',
                    icon: LoginCCubit.get(context).sufixIcon,
                    func: () {
                      LoginCCubit.get(context).passwordVisibilty();
                    },
                    hasIcon: true,
                  ),
                  InkWell(
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.poppins(
                          color: primaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CustomBtn(
                    function: () {
                      if (loginformKey.currentState!.validate()) {
                        LoginCCubit.get(context)
                            .userLogin(
                                email: emailControler.text,
                                password: passwordControler.text)
                            .then((value) => Navigator.pushReplacementNamed(
                                context, HomeScreen.routeName));
                      }
                    },
                    text: 'Login',
                    color: Color(0xffff6600),
                    textColor: Colors.white,
                  ),
                  BreakLine(),
                  CustomBtn(
                    function: () {
                      Navigator.pushReplacementNamed(
                          context, SignUpScreen.routeName);
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
