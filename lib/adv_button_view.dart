import 'package:adv_flutter_material/library_colors.dart';
import 'package:flutter/material.dart';

class AdvButton extends StatelessWidget {
  AdvButton(
      {Key key,
      @required this.text,
      @required this.buttonType,
      @required this.onPressed})
      : super(key: key);

  final String text;
  final ButtonType buttonType;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        text,
        maxLines: 1,
        style: TextStyle(color: Colors.white),
      ),
      color: getColor(),
      onPressed: onPressed,
    );
  }

  getColor() {
    LibraryColors libraryColors = new LibraryColors();
    if (buttonType == ButtonType.PRIMARY) {
      return libraryColors.getPrimaryColor();
    } else
      return libraryColors.getTertiaryColor();
  }
}

enum ButtonType { PRIMARY, SECONDARY }
