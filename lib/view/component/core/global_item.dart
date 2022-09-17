import 'package:flutter/material.dart';

class GlobalItem extends StatelessWidget {
  String? subject;
  String? date;
  String? endDate;
  String? startDate;

  GlobalItem({this.date, this.endDate, this.startDate, this.subject});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('$subject'),
              Row(
                children: [
                  Icon(Icons.timer),
                  Text('2 hrs'),
                ],
              ),
            ],
          ),
          subtitle: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Section Day'),
                      Text('Start Time'),
                      Text('End Time'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_month),
                        Text(' ${date}'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.red,
                        ),
                        Text('${startDate}'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.timer,
                          color: Colors.lightGreen,
                        ),
                        Text('${endDate}'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
