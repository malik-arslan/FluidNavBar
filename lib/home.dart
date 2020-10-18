import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text("This is home Screen", style: new TextStyle(
        fontSize: 25.0,
        color: Colors.white,
      )),),
    );
  }
}