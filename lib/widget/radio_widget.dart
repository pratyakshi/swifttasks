import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swifttasks/provider/radio_provider.dart';

class RadioWidget extends ConsumerWidget {
  const RadioWidget(
      {super.key,
      required this.category,
      required this.titleWidget,
      required this.valueInput,
      required this.onChangedValue});

  final String titleWidget;
  final Color category;
  final int valueInput;
  final VoidCallback onChangedValue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radio = ref.watch(radioProvider);
    return Material(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: category),
        child: RadioListTile(
          activeColor: category,
          contentPadding: EdgeInsets.zero,
          title: Transform.translate(
            offset: const Offset(-11, 0),
            child: Text(titleWidget,
                style: TextStyle(color: category, fontWeight: FontWeight.w700)),
          ),
          value: valueInput,
          groupValue: radio,
          onChanged: (value) {
            onChangedValue(); // Call the callback function here
            ref.read(radioProvider.notifier).state = valueInput;
          },
        ),
      ),
    );
  }
}
