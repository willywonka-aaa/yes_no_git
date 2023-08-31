import 'package:b_yes_no_git/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yes No App",
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).theme(),
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text("Yes No"))),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text("Click"),
          ),
        ),
      ),
    );
  }
}
