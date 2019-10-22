import 'package:adv_flutter_material/adv_image_card_view.dart';
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
    var checkBoxState = false;
    return Scaffold(
        appBar: AppBar(
          title: Text("Row"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvCardView(
                  title: "This is a nice title",
                  subtitle:
                      "And this is de description subtitle example long long looooooooooooooooooooooong",
                  imageUrl:
                      "https://www.mindinventory.com/blog/wp-content/uploads/2019/06/flutter-pros-cons-1200x500.png",
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvSingleRow(
                  title: "Single row with icon",
                  icon: Icons.access_alarm,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvSingleRow(
                  title: "Single row without icon",
                  icon: null,
                  checkBoxState: null,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0),
                child: AdvSingleRow(
                  title: "Single row with checkbox",
                  icon: null,
                  checkBoxState: checkBoxState,
                  onPressed: () {
                    checkBoxState = !checkBoxState;
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
