import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo/style/app_colors.dart';

class taskScreen extends StatefulWidget {
  @override
  State<taskScreen> createState() => _taskScreenState();
}

class _taskScreenState extends State<taskScreen> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: colors.Primarycolor,
          selectedTextColor: Colors.white,
          // deactivatedColor: Colors.white,
          onDateChange: (newDate) {
            date = newDate;
          },
        ),
      )
//       DatePicker(DateTime.now(),
//           initialSelectedDate: DateTime.now(),
//           selectionColor: colors.Primarycolor,
//           selectedTextColor: Colors.white,
// // dateTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
// // monthTextStyle: TextStyle(color: Colors.white),
// //     dayTextStyle: TextStyle(color: Colors.white),
//           height: 100,
//           deactivatedColor: Colors.white, onDateChange: (newDate) {
//         // New date selected
//         setState(() {
//           date = newDate;
//         });
//       })
    ]);
  }
}
