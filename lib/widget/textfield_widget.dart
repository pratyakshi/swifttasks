import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.maxLine,
    required this.hintText,
    required this.onTextChanged,
  }) : super(key: key);

  final String hintText;
  final int maxLine;
  final titleTaskProvider = StateProvider<String>((ref) => '');
  final descriptionProvider = StateProvider<String>((ref) => '');
  final ValueChanged<String>? onTextChanged;

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    _textEditingController.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    // Call the callback function with the updated text
    widget.onTextChanged?.call(_textEditingController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 242, 242),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: _textEditingController,
        onChanged: (value) {
          // Invoke the callback function when text changes
          _onTextChanged();
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: widget.hintText,
        ),
        maxLines: widget.maxLine,
      ),
    );
  }
}
