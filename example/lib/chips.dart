import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChipsPage extends StatefulWidget {
  ChipsPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ChipPageState();
}

class _ChipPageState extends State<ChipsPage> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
        key: key,
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Wrap(
          children: List<Widget>.generate(
            3,
            (int index) {
              return ChoiceChip(
                label: Text('Item $index'),
                selected: _value == index,
                onSelected: (bool selected) {
                  setState(() {
                    _value = selected ? index : null;
                  });
                },
              );
            },
          ).toList(),
        ));
  }
}
