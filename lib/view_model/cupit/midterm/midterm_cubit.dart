import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../model/final_model.dart';
import '../../../network/dio_helper.dart';
import '../../../network/end_points.dart';
import '../login/login_c_cubit.dart';

part 'midterm_state.dart';

class MidtermCubit extends Cubit<MidtermState> {
  ExamModel? examModel;

  MidtermCubit get(context) => BlocProvider.of(context);

  MidtermCubit() : super(MidtermInitial());

  Future getAllData() async {
    await DioHelper.getData(url: examsEndPoint, token: LoginCCubit.token)
        .then((value) {
      examModel = ExamModel.fromJson(value.data);
      print(value.data);
      emit(MidtermLoaded());
    });
  }
}
