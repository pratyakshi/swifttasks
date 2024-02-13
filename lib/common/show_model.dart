import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swifttasks/constants/app_style.dart';
import 'package:gap/gap.dart';
import 'package:swifttasks/provider/date_time_provider.dart';
import 'package:swifttasks/provider/radio_provider.dart';
import 'package:swifttasks/widget/datetime_Widget.dart';
import 'package:swifttasks/widget/radio_widget.dart';
import 'package:swifttasks/widget/textfield_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddNewTaskModel extends ConsumerWidget {
  const AddNewTaskModel({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateProv = ref.watch(dateProvider);
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
                valueInput: 1,
                onChangedValue: () =>
                    ref.read(radioProvider.notifier).update((state) => 1),
              ),
            ), // Add closing parentheses
            Expanded(
              child: RadioWidget(
                category: Colors.blueAccent,
                titleWidget: 'Work',
                valueInput: 2,
                onChangedValue: () =>
                    ref.read(radioProvider.notifier).update((state) => 2),
              ),
            ), // Add closing parentheses
            Expanded(
              child: RadioWidget(
                category: Colors.pinkAccent,
                titleWidget: 'Gen',
                valueInput: 3,
                onChangedValue: () =>
                    ref.read(radioProvider.notifier).update((state) => 3),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DateTImeWidget(
              titletext: 'Date',
              valueText: dateProv.toString(),
              iconn: Icons.calendar_today,
              onTap: () async {
                final pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime(2024, 1, 1),
                  firstDate: DateTime(2024),
                  lastDate: DateTime(2028),
                );

                if (pickedDate != null) {
                  final format = DateFormat.yMd();
                  ref
                      .read(dateProvider.notifier)
                      .update((state) => format.format(pickedDate));
                }
              },
            ),
            const Gap(35),
            DateTImeWidget(
              titletext: 'Time',
              valueText: ref.watch(timeProvider),
              iconn: Icons.access_time,
              onTap: () async {
                final getTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (getTime != null) {
                  ref
                      .read(timeProvider.notifier)
                      .update((state) => getTime.format(context));
                }
              },
            )
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
                onPressed: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
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
                  padding: const EdgeInsets.all(5.0),
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
