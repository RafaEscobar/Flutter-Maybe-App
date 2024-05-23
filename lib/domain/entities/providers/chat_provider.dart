import 'package:flutter/material.dart';
import 'package:maybe_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messages = [
    Message(message: 'Hola!!', fromWho: FromWho.me),
    Message(message: 'Como estas??', fromWho: FromWho.me),
    Message(message: 'Aqui andamos', fromWho: FromWho.me),
  ];

  Future<void> sendMessage( String message ) async {
    // TODO: Not implemented
  }

}