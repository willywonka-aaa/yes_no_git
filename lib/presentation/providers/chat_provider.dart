import 'package:b_yes_no_git/domain/entities/message.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> messageList = [
    Message(text: "Hola amor", fromWho: FromWho.me),
    Message(text: "Ya regresaste del trabajo?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    // TODO:
  }

}