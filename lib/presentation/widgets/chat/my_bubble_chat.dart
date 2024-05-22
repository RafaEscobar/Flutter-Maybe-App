import 'package:flutter/material.dart';

class MyBubbleChat extends StatelessWidget {
  const MyBubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Text('Simon, hola a todos', style: TextStyle(fontSize: 16, color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}