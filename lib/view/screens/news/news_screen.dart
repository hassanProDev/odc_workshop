import 'package:flutter/material.dart';

import '../../component/core/page_title.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: PageTitle(
            title: 'News',
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 0,
                itemBuilder: (_, context) => Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
