import 'package:adv_flutter_material/library_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvInputText extends StatefulWidget {
  final AdvInputType inputType;
  final String hint;

  AdvInputText({Key key, @required this.hint, @required this.inputType})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => AdvInputTextState(hint, inputType);
}

class AdvInputTextState extends State<AdvInputText> {
  final AdvInputType inputType;
  final String hint;
  bool obscureText = true;

  AdvInputTextState(this.hint, this.inputType);

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: getKeyboardType(),
        decoration: getDecoration(),
        obscureText: getObscureText());
  }

  getKeyboardType() {
    if (inputType == AdvInputType.NUMBER) {
      return TextInputType.numberWithOptions();
    } else if (inputType == AdvInputType.MAIL) {
      return TextInputType.emailAddress;
    } else if (inputType == AdvInputType.TEXT) {
      return TextInputType.text;
    } else if (inputType == AdvInputType.PASSWORD) {
      return TextInputType.visiblePassword;
    }
  }

  getDecoration() {
    return InputDecoration(
        labelText: hint,
        labelStyle: TextStyle(color: LibraryColors.primary),
        fillColor: LibraryColors.primary,
        focusColor: LibraryColors.primary,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: LibraryColors.primary)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: LibraryColors.primary)),
        suffixIcon: getIcon());
  }

  getIcon() {
    if (inputType == AdvInputType.PASSWORD) {
      return IconButton(
        icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
        onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
      );
    }
  }

  getObscureText() {
    if (inputType == AdvInputType.PASSWORD) {
      return obscureText;
    } else {
      return false;
    }
  }
}

enum AdvInputType { NUMBER, MAIL, TEXT, PASSWORD }
