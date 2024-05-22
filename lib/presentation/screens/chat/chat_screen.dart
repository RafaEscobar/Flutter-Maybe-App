import 'package:flutter/material.dart';
import 'package:maybe_app/presentation/widgets/my_bubble_chat.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 8),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const MyBubbleChat();
                }
              )
            ),
            Text('Hola2'),
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
      centerTitle: true,
    );
  }
}