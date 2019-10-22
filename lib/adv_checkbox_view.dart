import 'package:flutter/material.dart';

class AdvCheckbox extends StatefulWidget {
  AdvCheckbox({Key key, @required this.isChecked}) : super(key: key);

  final bool isChecked;

  @override
  State<StatefulWidget> createState() => AdvCheckboxState(isChecked);
}

class AdvCheckboxState extends State<AdvCheckbox> {
  bool isChecked;

  AdvCheckboxState(this.isChecked);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool value) {
        setState(() {
          isChecked = value;
        });
      },
    );
  }
}
