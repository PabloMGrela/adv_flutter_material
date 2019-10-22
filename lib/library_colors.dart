import 'package:flutter/material.dart';

class LibraryColors {
  static const Color _primary = Color(0xFF05668D);
  static const Color _secondary = Color(0xFF028090);
  static const Color _tertiary = Color(0xFF00a896);
  static const Color _accent = Color(0xFF02c39a);
  static const Color _error = Color(0xFFcc2936);
  static const Color _font = Color(0xFF85858b);

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color accent;
  final Color errorColor;
  final Color font;

  LibraryColors(
      {this.primary = _primary,
      this.secondary = _secondary,
      this.tertiary = _tertiary,
      this.accent = _accent,
      this.errorColor = _error,
      this.font = _font});

  Color getPrimaryColor() {
    return primary;
  }

  Color getSecondaryColor() {
    return secondary;
  }

  Color getTertiaryColor() {
    return tertiary;
  }

  Color getAccentColor() {
    return accent;
  }

  Color getErrorColor() {
    return errorColor;
  }

  Color getFontColor() {
    return font;
  }
}
