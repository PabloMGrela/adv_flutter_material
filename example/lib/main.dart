import 'package:adv_flutter_material/adv_button_view.dart';
import 'package:example_adv_material/cards.dart';
import 'package:example_adv_material/carousel.dart';
import 'package:example_adv_material/chips.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';
import 'input_text.dart';
import 'row.dart';
import 'texts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adv flutter demo app',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Adv flutter material Demo app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: AdvButton(
              text: "Buttons",
              buttonType: ButtonType.PRIMARY,
              onPressed: () {
                onButtonPressed(ButtonsPage());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: AdvButton(
              text: "Input texts",
              buttonType: ButtonType.SECONDARY,
              onPressed: () {
                onButtonPressed(InputTextPage());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: AdvButton(
              text: "Texts",
              buttonType: ButtonType.OUTLINED,
              onPressed: () {
                onButtonPressed(TextsPage());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: AdvButton(
              text: "Rows",
              buttonType: ButtonType.PRIMARY,
              onPressed: () {
                onButtonPressed(RowPage());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: AdvButton(
              text: "Chips",
              buttonType: ButtonType.SECONDARY,
              onPressed: () {
                onButtonPressed(ChipsPage());
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: AdvButton(
              text: "Cards",
              buttonType: ButtonType.OUTLINED,
              onPressed: () {
                onButtonPressed(CardsPage());
              },
            ),
          ),
        ],
      ),
    );
  }

  onButtonPressed(StatefulWidget widget) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => widget));
  }

//  onButtonsPressed() {
//    Navigator.of(context)
//        .push(MaterialPageRoute(builder: (context) => ButtonsPage()));
//  }
}
