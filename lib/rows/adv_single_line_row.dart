import 'package:adv_flutter_material/adv_checkbox_view.dart';
import 'package:adv_flutter_material/adv_text_view.dart';
import 'package:flutter/material.dart';

class AdvSingleRow extends StatefulWidget {
  AdvSingleRow(
      {Key key,
      @required this.title,
      @required this.icon,
      @required this.checkBoxState,
      @required this.onPressed})
      : super(key: key);

  final String title;
  final IconData icon;
  final bool checkBoxState;
  final GestureTapCallback onPressed;

  @override
  State<StatefulWidget> createState() =>
      AdvSingleRowState(title, icon, checkBoxState, onPressed);
}

class AdvSingleRowState extends State<AdvSingleRow> {
  AdvSingleRowState(this.title, this.icon, this.checkBoxState, this.onPressed);

  final String title;
  final IconData icon;
  bool checkBoxState;
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    double leftMargin = 8.0;
    double rightMargin = 8.0;
    double topBottomMargin = 16.0;
    if (checkBoxState != null) {
      leftMargin = 8.0;
      rightMargin = 0.0;
      topBottomMargin = 2.0;
    }
    AdvCheckbox checkbox = AdvCheckbox(
      isChecked: checkBoxState,
    );
    return Material(
        child: InkWell(
            onTap: onPressed,
            child: Container(
                margin: EdgeInsets.fromLTRB(
                    leftMargin, topBottomMargin, rightMargin, topBottomMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: () sync* {
                    yield AdvText(
                        text: title, textStyle: AdvTextStyle.BODY_BOLD);
                    if (icon != null) {
                      yield Icon(icon);
                    }
                    if (checkBoxState != null) {
                      yield checkbox;
                    }
                  }()
                      .toList(),
                ))));
  }
}
