import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_odc_project/view/component/core/arrow_back_button.dart';
import 'package:mvvm_odc_project/view/component/core/filter_icon.dart';
import 'package:mvvm_odc_project/view/component/core/global_item.dart';
import 'package:mvvm_odc_project/view/component/core/page_title.dart';

import '../../../view_model/cupit/sections/section_cubit.dart';

class SectionScreen extends StatelessWidget {
  static const String routeName = 'section';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => SectionCubit()..getAllData(),
      child: BlocConsumer<SectionCubit, SectionState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SectionCubit myCubit = SectionCubit().get(context);
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 5,
                backgroundColor: Colors.white,
                leading: ArrowBackButton(),
                title: PageTitle(title: 'Sections'),
                actions: [FilterIcon()],
                centerTitle: true,
              ),
              body: myCubit.sectionModel == null
                  ? Text("data")
                  : Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: myCubit.sectionModel!.data.length,
                              itemBuilder: (context, index) {
                                return GlobalItem(
                                  subject: myCubit
                                      .sectionModel!.data[index].sectionSubject,
                                  startDate: myCubit.sectionModel!.data[index]
                                      .sectionStartTime,
                                  endDate: myCubit
                                      .sectionModel!.data[index].sectionEndTime,
                                  date: myCubit
                                      .sectionModel!.data[index].sectionDate,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
