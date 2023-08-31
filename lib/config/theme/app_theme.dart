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
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            "Colors must be between 0 and ${_colorThemes.length}");

  final int selectedColor;

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      brightness: Brightness.light,
    );
  }
}
