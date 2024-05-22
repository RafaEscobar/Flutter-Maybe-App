import 'package:flutter/material.dart';
import 'package:maybe_app/config/themes/app_theme.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyanAccent,
          title: const Center(child: Text('Yes/No')),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: (){},
            child: const Text('Click me')
          )
        ),
      ),
    );
  }


}