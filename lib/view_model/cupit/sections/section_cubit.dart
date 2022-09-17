import 'package:bloc/bloc.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:mvvm_odc_project/network/dio_helper.dart';
import 'package:mvvm_odc_project/network/end_points.dart';

import '../../../model/section_model.dart';
import '../login/login_c_cubit.dart';

part 'section_state.dart';

class SectionCubit extends Cubit<SectionState> {
  SectionModel? sectionModel;

  SectionCubit get(context) => BlocProvider.of(context);

  SectionCubit() : super(SectionInitial());

  Future getAllData() async {
    await DioHelper.getData(url: sectionEndPoint, token: LoginCCubit.token)
        .then((value) {
      sectionModel = SectionModel.fromJson(value.data);
      print(sectionModel!.message);
      emit(SectionLoaded());
    });
  }
}
