import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF53658F);

const List<Color> _colorThemes = [
  _customColor,
  Colors.white,
  Colors.blueAccent,
  Colors.pink,
  Colors.green,
  Colors.yellowAccent,
  Colors.orange,
];

class AppTheme {
  AppTheme({this.selectedColor = 0});

  final int selectedColor;

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
