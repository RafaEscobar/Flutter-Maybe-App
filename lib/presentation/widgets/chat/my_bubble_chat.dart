import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';

class MyBubbleChat extends StatelessWidget {
  final Message messageEntity;

  const MyBubbleChat({
    required this.messageEntity,
    super.key
  });

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Text(messageEntity.message, style: const TextStyle(fontSize: 16, color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}