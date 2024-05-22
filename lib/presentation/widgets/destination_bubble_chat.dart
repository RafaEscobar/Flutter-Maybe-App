import 'package:flutter/material.dart';

class DestinationBubbleChat extends StatelessWidget {
  const DestinationBubbleChat({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Text('Hola mundo', style: TextStyle(fontSize: 16, color: Colors.white),)
          ),
        ),
        const SizedBox(height: 5),
        const ImageResponse(),
        const SizedBox(height: 8,)
      ],
    );
  }
}

class ImageResponse extends StatelessWidget {
  const ImageResponse({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/12-e4f57c8f172c51fdd983c2837349f853.gif',
        width: size.width * 0.6,
        height: 120,
        fit: BoxFit.cover,
      ),
    );
  }
}