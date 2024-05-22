import 'package:flutter/material.dart';
import 'package:maybe_app/config/themes/app_theme.dart';
import 'package:maybe_app/presentation/screens/chat/chat_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      home: const ChatScreen()
    );
  }


}