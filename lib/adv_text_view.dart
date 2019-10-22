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
      overflow: TextOverflow.ellipsis,
    );
  }

  getStyle() {
    LibraryColors libraryColors = new LibraryColors();
    switch (textStyle) {
      case AdvTextStyle.HEADING1:
        return TextStyle(
            color: libraryColors.getPrimaryColor(),
            fontSize: 40.0,
            fontWeight: FontWeight.bold);
        break;
      case AdvTextStyle.HEADING2:
        return TextStyle(
            color: libraryColors.getPrimaryColor(), fontSize: 30.0);
        break;
      case AdvTextStyle.BODY:
        return TextStyle(color: libraryColors.getFontColor(), fontSize: 14.0);

        break;
      case AdvTextStyle.BODY_BOLD:
        return TextStyle(
            color: libraryColors.getFontColor(),
            fontSize: 14.0,
            fontWeight: FontWeight.bold);
        break;
      case AdvTextStyle.TITLE:
        return TextStyle(
            color: libraryColors.getSecondaryColor(),
            fontSize: 20.0,
            fontWeight: FontWeight.bold);
        break;
      case AdvTextStyle.CAPTION:
        return TextStyle(
            color: libraryColors.getPrimaryColor(),
            fontSize: 10.0,
            letterSpacing: 2.0);
        break;
    }
  }
}

enum AdvTextStyle { HEADING1, HEADING2, BODY, BODY_BOLD, TITLE, CAPTION }
