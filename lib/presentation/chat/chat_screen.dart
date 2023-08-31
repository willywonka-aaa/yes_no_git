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
      body: Center(
        child: FilledButton.tonal(
          onPressed: () {},
          child: const Text("Click"),
        ),
      ),
    );
  }
}
