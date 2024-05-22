import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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