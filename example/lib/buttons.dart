import 'package:adv_flutter_material/adv_button_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  ButtonsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ButtonsPageState createState() => _ButtonsPageState();
}

class _ButtonsPageState extends State<ButtonsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Buttons"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvButton(
                  text: "Primary button",
                  buttonType: ButtonType.PRIMARY,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvButton(
                  text: "Secondary button",
                  buttonType: ButtonType.SECONDARY,
                  onPressed: () {},
                ),
              )
            ],
          ),
        ));
  }
}
