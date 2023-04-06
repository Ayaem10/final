
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class textfield extends StatelessWidget {
  textfield({required this.text, required this.width, required this.height});
  String? text;
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        decoration: InputDecoration(
          labelText: text!,
          enabledBorder: OutlineInputBorder(
            gapPadding: 12,
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Color(0xff0A9A9A),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(
              color: Color(0xff0A9A9A),
            ),
          ),
        ),
      ),
    );
  }
}
