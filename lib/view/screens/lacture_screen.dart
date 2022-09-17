import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mvvm_odc_project/view/component/core/arrow_back_button.dart';
import 'package:mvvm_odc_project/view/component/core/filter_icon.dart';
import 'package:mvvm_odc_project/view/component/core/global_item.dart';
import 'package:mvvm_odc_project/view/component/core/page_title.dart';

import '../../view_model/cupit/lacture/lactures_cubit.dart';

class LactureScreen extends StatelessWidget {
  static const String routeName = 'lactures';

  @override
  Widget build(BuildContext context) {
    return
        // BlocProvider(
        // create: (context) => LacturesCubit(LactureRepo(LactureApi())),
        // child:
        BlocProvider(
      lazy: true,
      create: (context) => LacturesCubit()..getAllData(),
      child: BlocConsumer<LacturesCubit, LacturesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LacturesCubit myCubit = LacturesCubit().get(context);
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 5,
                backgroundColor: Colors.white,
                leading: ArrowBackButton(),
                title: PageTitle(title: 'Lacture'),
                actions: [FilterIcon()],
                centerTitle: true,
              ),
              body: myCubit.lactures == null
                  ? Text("data")
                  : Padding(
                      padding: EdgeInsets.all(24),
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: myCubit.lactures!.data!.length,
                              itemBuilder: (context, index) {
                                return GlobalItem(
                                  subject: myCubit
                                      .lactures!.data![index].lectureSubject,
                                  startDate: myCubit
                                      .lactures!.data![index].lectureStartTime,
                                  endDate: myCubit
                                      .lactures!.data![index].lectureEndTime,
                                  date: myCubit
                                      .lactures!.data![index].lectureDate,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
            // ),
          );
        },
      ),
    );
  }
}
