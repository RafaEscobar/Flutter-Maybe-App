import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DestinationBubbleChat extends StatelessWidget {
  final Message messageEntity;
  const DestinationBubbleChat({
    required this.messageEntity,
    super.key
  });

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            child: Text(messageEntity.message, style: const TextStyle(fontSize: 16, color: Colors.white),)
          ),
        ),
        const SizedBox(height: 5),
        ImageResponse(answerImage: messageEntity.imgUrl!,),
        const SizedBox(height: 8,)
      ],
    );
  }
}

class ImageResponse extends StatelessWidget {
  final String answerImage;
  const ImageResponse({
    required this.answerImage,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.network(
        answerImage,
        width: size.width * 0.6,
        height: 120,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if( loadingProgress == null ) return child;

          return Container(
            width: size.width * 0.6,
            height: 120,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Skeletonizer(
              enabled: true,
              child : Placeholder()
            )
          );
        },
      ),
    );
  }
}