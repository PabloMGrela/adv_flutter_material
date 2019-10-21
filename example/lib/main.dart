import 'package:Example_Adv_Material/buttons.dart';
import 'package:Example_Adv_Material/input_text.dart';
import 'package:adv_flutter_material/adv_button_view.dart';
import 'package:flutter/material.dart';

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
          )
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
