import 'package:adv_flutter_material/adv_input_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputTextPage extends StatefulWidget {
  InputTextPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _InputTextPageState createState() => _InputTextPageState();
}

class _InputTextPageState extends State<InputTextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Input fields"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: AdvInputText(
                  hint: "Password",
                  inputType: AdvInputType.PASSWORD,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: AdvInputText(
                  hint: "Number",
                  inputType: AdvInputType.NUMBER,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: AdvInputText(
                  hint: "Mail",
                  inputType: AdvInputType.MAIL,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: AdvInputText(
                  hint: "Text",
                  inputType: AdvInputType.TEXT,
                ),
              ),
            ],
          ),
        ));
  }
}
