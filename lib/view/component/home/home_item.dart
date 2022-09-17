import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvvm_odc_project/model/home_model.dart';
import 'package:mvvm_odc_project/res/shared/constance.dart';

class HomeItem extends StatelessWidget {
  HomeModel? homeModel;

  HomeItem({this.homeModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        homeModel!.func!(context);
      },
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(24),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xffedeef0),
                    ),
                    child: homeModel!.icon),
              )),
              Text(
                '${homeModel!.title}',
                style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
