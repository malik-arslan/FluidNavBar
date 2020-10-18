import 'package:flutter/material.dart';

class Partner extends StatelessWidget {
  const Partner({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(child: Text("This is Partner Screen", style: new TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      )),),
    );
  }
}