import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  const Bookmark({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text("This is Bookmark Screen", style: new TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      )),),
    );
  }
}