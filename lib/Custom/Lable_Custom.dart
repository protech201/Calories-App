import 'package:flutter/material.dart';

class Lable_Custom extends StatelessWidget {
  // const LableCustom({Key? key}) : super(key: key);
  final String title;
  Lable_Custom(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: const TextStyle(
          color: Color(0xff6A7CD8),
          fontSize: 25
      ),);
  }
}
