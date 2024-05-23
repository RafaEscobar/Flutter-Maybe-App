import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';
import 'package:maybe_app/domain/entities/providers/chat_provider.dart';
import 'package:maybe_app/presentation/widgets/chat/destination_bubble_chat.dart';
import 'package:maybe_app/presentation/widgets/chat/input_message_chat.dart';
import 'package:maybe_app/presentation/widgets/chat/my_bubble_chat.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarChat(),
      body: BodyChat(),
    );
  }
}

class BodyChat extends StatelessWidget {
  const BodyChat({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messages.length ,
                itemBuilder: (context, index) {
                  final message = chatProvider.messages[index];
                  return ( message.fromWho == FromWho.me ) ?
                    MyBubbleChat(messageEntity: message,) :
                    const DestinationBubbleChat()
                  ;
                }
              )
            ),
            InputMessageChat(
              onValue: (value) => chatProvider.sendMessage(value),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBarChat extends StatelessWidget implements PreferredSizeWidget {
  const AppBarChat({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return AppBar(
      backgroundColor: colors.tertiary,
      leading: const Padding(
        padding: EdgeInsets.all(6.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage('https://m.media-amazon.com/images/I/81xWWYfuQwL._UC256,256_CACC,256,256_.jpg'),
        )
      ),
      title: const Text('Rocky 🥊', style: TextStyle(color: Colors.white),),
    );
  }
}