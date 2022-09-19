import 'package:calendar_builder/calendar_builder.dart';
import 'package:flutter/material.dart';

import '../../component/core/arrow_back_button.dart';
import '../../component/core/filter_icon.dart';
import '../../component/core/page_title.dart';

class EventScreen extends StatelessWidget {
  static const String routeName = 'eventScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.white,
          leading: ArrowBackButton(),
          title: PageTitle(title: 'Events'),
          actions: [FilterIcon()],
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: CbMonthBuilder(
                cbConfig: CbConfig(
                  startDate: DateTime(2020),
                  endDate: DateTime(2026),
                  selectedDate: DateTime(2021, 3, 4),
                  selectedYear: DateTime(2021),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
