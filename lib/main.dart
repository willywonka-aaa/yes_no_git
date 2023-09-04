import 'package:b_yes_no_git/config/theme/app_theme.dart';
import 'package:b_yes_no_git/presentation/providers/chat_provider.dart';
import 'package:b_yes_no_git/presentation/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
        title: "Yes No App",
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 3).theme(),
        home: const ChatScreen()
      ),
    );
  }
}
