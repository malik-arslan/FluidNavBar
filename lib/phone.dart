import 'package:flutter/material.dart';

class Phone extends StatelessWidget {
  const Phone({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text("This is Phone Screen", style: new TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      )),),
    );
  }
}