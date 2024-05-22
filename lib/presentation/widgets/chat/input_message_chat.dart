import 'package:flutter/material.dart';

class InputMessageChat extends StatelessWidget {
  const InputMessageChat({super.key});

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
        print(textController.value.text);
        textController.clear();
      },
    )
  );

  return TextFormField(
    focusNode: focusNode,
    controller: textController,
    decoration: inputDecorationChat,
    onFieldSubmitted: (value){
      print(value);
      textController.clear();
      focusNode.requestFocus();
    },
    onTapOutside: (event) {
      focusNode.unfocus();
    },
  );

 }
}