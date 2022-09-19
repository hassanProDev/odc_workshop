import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/view/component/core/page_title.dart';

import '../../component/core/arrow_back_button.dart';

class NoteScreen extends StatelessWidget {
  static const String routeName = 'noteScreen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: ArrowBackButton(
            color: Colors.black,
          ),
          centerTitle: true,
          title: PageTitle(title: 'Note'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: 0,
            itemBuilder: (_, index) => Container(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
          backgroundColor: Colors.grey,
        ),
      ),
    );
  }
}
