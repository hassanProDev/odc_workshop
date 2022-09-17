import 'package:flutter/material.dart';

import '../component/core/arrow_back_button.dart';
import '../component/core/filter_icon.dart';
import '../component/core/page_title.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemBuilder: (_, context) => Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
