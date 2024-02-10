import 'package:flutter/material.dart';
import 'package:swifttasks/constants/app_style.dart';
import 'package:gap/gap.dart';

class DateTImeWidget extends StatelessWidget {
  const DateTImeWidget({
    super.key,
    required this.titletext,
    required this.valueText,
    required this.iconn,
  });

  final String titletext;
  final String valueText;
  final IconData iconn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titletext,
            style: AppStyle.headingOne,
          ),
          const Gap(7),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 237, 237),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [Icon(iconn), const Gap(12), Text(valueText)],
            ),
          ),
        ],
      ),
    );
  }
}
