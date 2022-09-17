import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/cupit/midterm/midterm_cubit.dart';
import '../component/core/arrow_back_button.dart';
import '../component/core/filter_icon.dart';
import '../component/core/global_item.dart';
import '../component/core/page_title.dart';

class FinalsScreen extends StatelessWidget {
  static const String routeName = 'finalScreen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => MidtermCubit()..getAllData(),
      child: BlocConsumer<MidtermCubit, MidtermState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          MidtermCubit myCubit = MidtermCubit().get(context);
          return SafeArea(
              child: Scaffold(
            appBar: AppBar(
              elevation: 5,
              backgroundColor: Colors.white,
              leading: ArrowBackButton(),
              title: PageTitle(title: 'Finals'),
              actions: [FilterIcon()],
              centerTitle: true,
            ),
            body: myCubit.examModel == null
                ? Text("data")
                : Padding(
                    padding: EdgeInsets.all(24),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: myCubit.examModel!.data!.length,
                            itemBuilder: (context, index) {
                              return GlobalItem(
                                subject:
                                    myCubit.examModel!.data![index].examSubject,
                                startDate: myCubit
                                    .examModel!.data![index].examStartTime,
                                endDate:
                                    myCubit.examModel!.data![index].examEndTime,
                                date: myCubit.examModel!.data![index].examDate,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
          ));
        },
      ),
    );
  }
}
