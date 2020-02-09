import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  CardsPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CardPageState();
}

class _CardPageState extends State<CardsPage> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Card(
          margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: InkWell(
            onTap: () {},
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.album),
                  title: Text('The Enchanted Nightingale'),
                  subtitle:
                      Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                    FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
