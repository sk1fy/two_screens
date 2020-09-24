import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      color: Color(0xFFFFFFF),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.video_label),
              iconSize: 40.0,
              onPressed: () => {}),
          IconButton(
              icon: Icon(Icons.dashboard), iconSize: 40.0, onPressed: () => {}),
          IconButton(
              icon: Icon(Icons.shopping_basket),
              iconSize: 40.0,
              onPressed: () => {}),
          IconButton(
              icon: Icon(Icons.school), iconSize: 40.0, onPressed: () => {}),
          IconButton(
              icon: Icon(Icons.person), iconSize: 40.0, onPressed: () => {}),
        ],
      ),
    );
  }
}
