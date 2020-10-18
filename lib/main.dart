import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import './home.dart';
import './bookmark.dart';
import './partner.dart';
import './phone.dart';

void main() => runApp(FluidNavBarDemo());

class FluidNavBarDemo extends StatefulWidget {
  FluidNavBarDemo({Key key}) : super(key: key);

  @override
  _FluidNavBarDemoState createState() => _FluidNavBarDemoState();
}

class _FluidNavBarDemoState extends State<FluidNavBarDemo> {
  Widget _child;

  @override
  void initState() {
    super.initState();
    _child = Home();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigation Bar"),
        ),
        backgroundColor: Color(0XFF75B7E1),
        extendBody: true,
        body: _child,
        bottomNavigationBar: FluidNavBar(
          icons: [
            FluidNavBarIcon(
                iconPath: 'assets/home.svg',
                backgroundColor: Color(0xFF4285F4),
                extras: {'label': "home"}),
            FluidNavBarIcon(
                iconPath: 'assets/bookmark.svg',
                backgroundColor: Color(0xFFEC4143),
                extras: {'label': "bookmark"}),
            FluidNavBarIcon(
                iconPath: 'assets/partner.svg',
                backgroundColor: Color(0xFFFCBA02),
                extras: {'label': "partner"}),
            FluidNavBarIcon(
                iconPath: 'assets/phone.svg',
                backgroundColor: Color(0xFF34A950),
                extras: {'label': "phone"}),
          ],
          onChange: _handleNavigationBarChange,
          style: FluidNavBarStyle(iconUnselectedForegroundColor: Colors.white),
          scaleFactor: 1.5,
          itemBuilder: (icon, item) => Semantics(
            label: icon.extras["label"],
            child: item,
          ),
        ),
      ),
    );
  }

  void _handleNavigationBarChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = Home();
          break;
        case 1:
          _child = Bookmark();
          break;
        case 2:
          _child = Partner();
          break;
        case 3:
          _child = Phone();
          break;
      }
    });
  }
}
