import 'package:flutter/material.dart';

class InputMessageChat extends StatelessWidget {
  const InputMessageChat({super.key});

 @override
 Widget build(BuildContext context) {
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
        print("No se como rescatar el valor todavia");
      },
    )
  );

  return TextFormField(
    decoration: inputDecorationChat,
    onFieldSubmitted: (value){
      print('Enviado $value');
    },
    onChanged: (value){
      print('Cambiado $value');
    },
    style: const TextStyle(
      
    ),
  );

 }
}