import 'package:adv_flutter_material/adv_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextsPage extends StatefulWidget {
  TextsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TextsPageState createState() => _TextsPageState();
}

class _TextsPageState extends State<TextsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Texts"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvText(
                  text: "Heading 1",
                  textStyle: AdvTextStyle.HEADING1,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvText(
                  text: "Heading 2",
                  textStyle: AdvTextStyle.HEADING2,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvText(
                  text: "Title",
                  textStyle: AdvTextStyle.TITLE,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvText(
                  text: "Body",
                  textStyle: AdvTextStyle.BODY,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvText(
                  text: "Body bold",
                  textStyle: AdvTextStyle.BODY_BOLD,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvText(
                  text: "Caption",
                  textStyle: AdvTextStyle.CAPTION,
                ),
              ),
            ],
          ),
        ));
  }
}
