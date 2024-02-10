import 'package:flutter/material.dart';

class TextFieldWIdget extends StatelessWidget {
  const TextFieldWIdget({
    Key? key,
    required this.maxLine,
    required this.hintText,
  }) : super(key: key);

  final String hintText;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 242, 242),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
        ),
        maxLines: maxLine,
      ),
    );
  }
}
