import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/lactuer_model.dart';
import '../../../network/dio_helper.dart';
import '../../../network/end_points.dart';
import '../login/login_c_cubit.dart';

part 'lactures_state.dart';

class LacturesCubit extends Cubit<LacturesState> {
  LactuerModel? lactures;

  LacturesCubit get(context) => BlocProvider.of(context);

  LacturesCubit() : super(LacturesInitial());

  Future getAllData() async {
    await DioHelper.getData(url: lectureEndPoint, token: LoginCCubit.token)
        .then((value) {
      lactures = LactuerModel.fromJson(value.data);
      print(value.data);
      emit(LacturesLoaded());
    });
  }
}
