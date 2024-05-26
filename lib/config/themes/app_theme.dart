import 'package:flutter/material.dart';

const Color _myCustomColor = Color(0xFF3EEEE0);

const List<Color> _colorList = [
  _myCustomColor,
  Colors.amber,
  Colors.blue,
  Colors.blueGrey,
  Colors.brown
];

class AppTheme {
  final int selectedColor;

  const AppTheme({this.selectedColor = 0})
    : assert(selectedColor>=0 && selectedColor<=(_colorList.length-1), 'selectedColor must be between 0 and 4');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorList[selectedColor]
    );
  }
}