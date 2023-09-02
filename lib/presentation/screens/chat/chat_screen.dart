import 'package:b_yes_no_git/presentation/widgets/chat/her_message_bubble.dart';
import 'package:b_yes_no_git/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://celebborn.com/celeb_image/amanda-seyfried-30994.jpg",
              scale: .3,
            ),
          ),
        ),
        title: const Text("Mi amor ❤️"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0) ? const MyMessageBubble() : const HerMessageBubble();
                },
              ),
            ),
            const Text("Hola"),
          ],
        ),
      ),
    );
  }
}
