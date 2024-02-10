import 'package:flutter/material.dart';
import 'package:swifttasks/constants/app_style.dart';
import 'package:gap/gap.dart';
import 'package:swifttasks/widget/datetime_Widget.dart';
import 'package:swifttasks/widget/radio_widget.dart';
import 'package:swifttasks/widget/textfield_widget.dart';

class AddNewTaskModel extends StatelessWidget {
  const AddNewTaskModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
            width: double.infinity,
            child: Text(
              'Add a New Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
        Divider(
          thickness: 0.5,
          color: Color.fromARGB(255, 139, 139, 139),
        ),
        const Gap(8),
        const Text(
          'TItle Task',
          style: AppStyle.headingOne,
        ),
        const Gap(8),
        const TextFieldWIdget(maxLine: 1, hintText: 'Add your task here...'),
        const Gap(15),
        Text('Description', style: AppStyle.headingOne),
        const Gap(8),
        const TextFieldWIdget(
            maxLine: 6, hintText: 'Add a description for your task...'),
        const Gap(10),
        Text('Category', style: AppStyle.headingOne),
        Row(
          children: [
            Expanded(
              child: RadioWidget(
                category: Colors.greenAccent,
                titleWidget: 'Personal',
              ),
            ), // Add closing parentheses
            Expanded(
              child: RadioWidget(
                category: Colors.blueAccent,
                titleWidget: 'Work',
              ),
            ), // Add closing parentheses
            Expanded(
              child: RadioWidget(
                category: Colors.pinkAccent,
                titleWidget: 'General',
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            DateTImeWidget(
                titletext: 'Date',
                valueText: 'dd/mm/yy',
                iconn: Icons.calendar_today),
            const Gap(35),
            DateTImeWidget(
                titletext: 'Time',
                valueText: 'hh : mm',
                iconn: Icons.access_time)
          ],
        ),
        const Gap(20),

        // Button Section

        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 245, 245, 245),
                    foregroundColor: Color.fromARGB(255, 178, 162, 248),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(
                      color: Color.fromARGB(255, 230, 229, 229),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Cancel'),
                ),
              ),
            ),
            const Gap(35),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 178, 162, 248),
                    foregroundColor: Color.fromARGB(255, 255, 255, 255),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: BorderSide(
                      color: Color.fromARGB(255, 223, 223, 223),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12)),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Create'),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
