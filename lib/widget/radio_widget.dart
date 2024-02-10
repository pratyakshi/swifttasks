import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget {
  const RadioWidget(
      {super.key, required this.category, required this.titleWidget});

  final String titleWidget;
  final Color category;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: category),
        child: RadioListTile(
          contentPadding: EdgeInsets.zero,
          title: Transform.translate(
            offset: const Offset(-11, 0),
            child: Text(titleWidget,
                style: TextStyle(color: category, fontWeight: FontWeight.w700)),
          ),
          value: 1,
          groupValue: 0,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
