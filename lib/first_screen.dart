import 'package:flutter/material.dart';
import 'package:two_screens/components/list_categories.dart';

import 'components/bottom_nav_bar.dart';
import 'components/top_plank.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        appBar: buildAppBar(),
        body: Column(
          children: [TopPlank(), ListCategories()],
        ),
        bottomNavigationBar: BottomNavBar());
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text('Азкары'),
      elevation: 0,
      leading: IconButton(
          icon: Icon(
            Icons.chevron_left,
            color: Colors.green,
            size: 40.0,
          ),
          onPressed: () => {}),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: () => {print('tap')})
      ],
    );
  }
}
