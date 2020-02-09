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
    if (buttonType == ButtonType.OUTLINED) {
      return OutlineButton(
        onPressed: onPressed,
        child: Text(
          text,
          maxLines: 1,
          style: TextStyle(color: LibraryColors.primary),
        ),
      );
    } else
      return RaisedButton(
        child: Text(
          text,
          maxLines: 1,
          style: TextStyle(color: LibraryColors.white),
        ),
        color: getColor(),
        onPressed: onPressed,
      );
  }

  getColor() {
    if (buttonType == ButtonType.PRIMARY) {
      return LibraryColors.primary;
    } else
      return LibraryColors.tertiary;
  }
}

enum ButtonType { PRIMARY, SECONDARY, OUTLINED }
