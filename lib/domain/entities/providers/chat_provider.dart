import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(message: 'Hola!!', fromWho: FromWho.me),
    Message(message: 'Como estas??', fromWho: FromWho.me),
    Message(message: 'Aqui andamos', fromWho: FromWho.me),
  ];

  Future<void> sendMessage( String message ) async {
    if (message.trim().isEmpty) return;
    final newMessage = Message(message: message, fromWho: FromWho.me);
    messages.add(newMessage);
    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut
    );
  }
}