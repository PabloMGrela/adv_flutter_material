import 'package:adv_flutter_material/adv_text_view.dart';
import 'package:flutter/material.dart';

class AdvCardView extends StatelessWidget {
  AdvCardView(
      {Key key,
      @required this.title,
      @required this.subtitle,
      @required this.imageUrl,
      @required this.onPressed})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imageUrl;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Material(
          child: InkWell(
        onTap: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image(image: NetworkImage(imageUrl)),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
                child: AdvText(text: title, textStyle: AdvTextStyle.TITLE)),
            Container(
                margin: EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                child: AdvText(text: subtitle, textStyle: AdvTextStyle.BODY)),
          ],
        ),
      )),
    );
  }
}
