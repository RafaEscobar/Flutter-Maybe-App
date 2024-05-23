import 'package:flutter/material.dart';

class InputMessageChat extends StatelessWidget {
  final ValueChanged onValue;

  const InputMessageChat({
    required this.onValue,
    super.key
  });

 @override
 Widget build(BuildContext context) {
  final textController = TextEditingController();
  final focusNode = FocusNode();

  final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide( color: Colors.transparent ),
  );

  final inputDecorationChat = InputDecoration(
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
    filled: true,
    suffixIcon: IconButton(
      icon: const Icon( Icons.send ),
      onPressed: () {
        final textValue = textController.value.text;
        textController.clear();
        onValue(textValue);
      },
    )
  );

  return Padding(
    padding: const EdgeInsets.only(top: 6),
    child: TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecorationChat,
      onFieldSubmitted: (value){
        textController.clear();
        focusNode.requestFocus();
        onValue(value);
      },
      onTapOutside: (event) {
        focusNode.unfocus();
      },
    ),
  );

 }
}