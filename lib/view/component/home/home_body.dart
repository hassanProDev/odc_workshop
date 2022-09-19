import 'package:flutter/material.dart';
import 'package:mvvm_odc_project/model/home_model.dart';
import 'package:mvvm_odc_project/view/component/home/home_item.dart';

import '../core/title_logo_app.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: TitleLogoApp(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (_, index) => HomeItem(
                  homeModel: homeData[index],
                ),
                itemCount: 6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
