import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swifttasks/constants/app_style.dart';
import 'package:gap/gap.dart';

class DateTImeWidget extends ConsumerWidget {
  const DateTImeWidget({
    super.key,
    required this.titletext,
    required this.valueText,
    required this.iconn,
    required this.onTap,
  });

  final String titletext;
  final String valueText;
  final IconData iconn;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titletext,
            style: AppStyle.headingOne,
          ),
          const Gap(7),
          Material(
            child: Ink(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 245, 245, 245),
                  borderRadius: BorderRadius.circular(14)),
              child: InkWell(
                borderRadius: BorderRadius.circular(14),
                onTap: onTap,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    children: [Icon(iconn), const Gap(12), Text(valueText)],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
