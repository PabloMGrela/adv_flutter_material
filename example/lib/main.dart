import 'package:adv_flutter_material/adv_button_view.dart';
import 'package:adv_flutter_material/adv_input_text.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: AdvButton(
                text: "Button",
                buttonType: ButtonType.PRIMARY,
                onPressed: () {},
              ),
            ),
            Center(
              child: AdvButton(
                text: "Button",
                buttonType: ButtonType.SECONDARY,
                onPressed: () {},
              ),
            ),
            Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: AdvInputText(
                    hint: "Password", inputType: AdvInputType.PASSWORD)),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 15, top: 16),
              child: AdvInputText(hint: "Other", inputType: AdvInputType.TEXT),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
