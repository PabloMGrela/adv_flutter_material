import 'package:adv_flutter_material/adv_text_view.dart';
import 'package:flutter/material.dart';

class AdvSingleRow extends StatefulWidget {
  AdvSingleRow(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.onPressed})
      : super(key: key);

  final String title;
  final Icon icon;
  final GestureTapCallback onPressed;

  @override
  State<StatefulWidget> createState() =>
      AdvSingleRowState(title, icon, onPressed);
}

class AdvSingleRowState extends State<AdvSingleRow> {
  AdvSingleRowState(this.title, this.icon, this.onPressed);

  final String title;
  final Icon icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return Material(
        child: Card(
          child: InkWell(
            onTap: onPressed,
            child: ListTile(
                leading: icon,
                title: AdvText(text: title, textStyle: AdvTextStyle.BODY_BOLD)),
          ),
        ),
      );
    } else {
      return Material(
          child: Card(
              child: InkWell(
                  onTap: onPressed,
                  child: ListTile(
                      title: AdvText(
                          text: title, textStyle: AdvTextStyle.BODY_BOLD)))));
    }
  }
}
