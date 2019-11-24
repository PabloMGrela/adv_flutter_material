import 'package:adv_flutter_material/rows/adv_single_line_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowPage extends StatefulWidget {
  RowPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RowPageState createState() => _RowPageState();
}

class _RowPageState extends State<RowPage> {
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
        key: key,
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: ListView(
          children: <Widget>[
            AdvSingleRow(
              title: "Row 1",
              icon: null,
              onPressed: () {
                key.currentState.showSnackBar(new SnackBar(
                  content: new Text("Row 1 pressed"),
                ));
              },
            ),
            AdvSingleRow(
              title: "With icon",
              icon: Icon(Icons.email),
              onPressed: () {
                key.currentState.showSnackBar(new SnackBar(
                  content: new Text("Row with icon pressed"),
                ));
              },
            ),
          ],
        ));
  }
}
