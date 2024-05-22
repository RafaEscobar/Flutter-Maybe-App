import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF000000);

const List<Color> _colorsTheme = [
  _customColor,
  Colors.amber,
  Colors.blue,
  Colors.cyan,
  Colors.greenAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({ this.selectedColor = 0 })
    : assert(selectedColor >= 0, 'selectedColor deberia tener un valor entre 0 y 4');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorsTheme[selectedColor],
    );
  }

}