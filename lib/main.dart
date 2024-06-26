import 'package:flutter/material.dart';
import 'package:maybe_app/config/themes/app_theme.dart';
import 'package:maybe_app/domain/entities/providers/chat_provider.dart';
import 'package:maybe_app/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 3).theme(),
        home: const ChatScreen()
      ),
    );
  }


}