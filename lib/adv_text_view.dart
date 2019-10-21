import 'package:adv_flutter_material/library_colors.dart';
import 'package:flutter/material.dart';

class AdvText extends StatelessWidget {
  AdvText({Key key, @required this.text, @required this.textStyle})
      : super(key: key);

  final String text;
  final AdvTextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    var _text = "";
    if (textStyle == AdvTextStyle.CAPTION) {
      _text = text.toUpperCase();
    } else {
      _text = text;
    }
    return Text(
      _text,
      style: getStyle(),
    );
  }

  getStyle() {
    if (textStyle == AdvTextStyle.HEADING1) {
      return TextStyle(
          color: LibraryColors.primary,
          fontSize: 40.0,
          fontWeight: FontWeight.bold);
    } else if (textStyle == AdvTextStyle.HEADING2) {
      return TextStyle(color: LibraryColors.primary, fontSize: 30.0);
    } else if (textStyle == AdvTextStyle.TITLE) {
      return TextStyle(
          color: LibraryColors.secondary,
          fontSize: 20.0,
          fontWeight: FontWeight.bold);
    } else if (textStyle == AdvTextStyle.BODY) {
      return TextStyle(color: LibraryColors.fontGrey, fontSize: 14.0);
    } else if (textStyle == AdvTextStyle.BODY_BOLD) {
      return TextStyle(
          color: LibraryColors.fontGrey,
          fontSize: 14.0,
          fontWeight: FontWeight.bold);
    } else if (textStyle == AdvTextStyle.CAPTION) {
      return TextStyle(
          color: LibraryColors.primary, fontSize: 10.0, letterSpacing: 2.0);
    }
  }
}

enum AdvTextStyle { HEADING1, HEADING2, BODY, BODY_BOLD, TITLE, CAPTION }
