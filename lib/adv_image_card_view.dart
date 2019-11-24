import 'package:adv_flutter_material/adv_text_view.dart';
import 'package:flutter/material.dart';

class AdvCardView extends StatelessWidget {
  AdvCardView(
      {Key key,
      @required this.title,
      @required this.subtitle,
      @required this.imageUrl,
      @required this.ratio,
      @required this.cardWidth,
      @required this.onPressed})
      : super(key: key);

  final String title;
  final String subtitle;
  final String imageUrl;
  final CardRatio ratio;
  final CardWidth cardWidth;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var selectedWidth = getWidth(width, cardWidth);
    return AspectRatio(
        aspectRatio: 16 / 9,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Container(
              width: selectedWidth,
              height: selectedWidth,
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Card(
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
                            child: AdvText(
                                text: title, textStyle: AdvTextStyle.TITLE)),
                        Container(
                            margin: EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
                            child: AdvText(
                                text: subtitle, textStyle: AdvTextStyle.BODY)),
                      ],
                    ),
                  )),
                ),
              )),
        ));
  }

  getWidth(double width, CardWidth cardWidth) {
    switch (cardWidth) {
      case CardWidth.FULL:
        return width;
        break;
      case CardWidth.HALF:
        return width * 0.5;
        break;
      case CardWidth.THREE_QUARTERS:
        return width * 3 / 4;
        break;
    }
  }

  getHeight(double width, CardRatio ratio) {
    switch (ratio) {
      case CardRatio.FOUR_THREE:
        return width / 4.0 / 3.0;
        break;
      case CardRatio.SIXTEEN_NINE:
        return width / 16.0 / 9.0;
        break;
    }
  }
}

enum CardRatio { FOUR_THREE, SIXTEEN_NINE }

enum CardWidth { FULL, HALF, THREE_QUARTERS }
