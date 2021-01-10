import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 5,
      height: 15,
      color: Colors.blueGrey,
      endIndent: 15,
      indent: 15,
    );
  }
}
