import 'package:adv_flutter_material/adv_text_view.dart';
import 'package:flutter/material.dart';

class AdvSingleRow extends StatelessWidget {
  AdvSingleRow(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.onPressed})
      : super(key: key);

  final String title;
  final IconData icon;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Material(
          child: InkWell(
        onTap: onPressed,
        child: Container(
          margin: EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 16.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AdvText(text: title, textStyle: AdvTextStyle.BODY_BOLD),
                Icon(icon),
              ]),
        ),
      )),
    );
  }
}
