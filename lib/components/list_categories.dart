import 'package:flutter/material.dart';

import '../second_screen.dart';

List<Map> items = [
  {"image": 'assets/images/image20.jpg', "title": 'Утром'},
  {"image": 'assets/images/image22.jpg', "title": 'Вечером'},
  {"image": 'assets/images/image21.jpg', "title": 'После молитвы'},
  {"image": 'assets/images/image21.jpg', "title": 'Важные дуа. Часть 1'},
];

class ListCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xFFD1D1D1)))),
              padding: EdgeInsets.all(15.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: double.infinity,
                    child: Image.asset(
                      items[index]['image'],
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            items[index]['title'],
                            style: TextStyle(
                                fontSize: 17.0,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFFFFFFFF)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  'Посмотреть',
                                  style: TextStyle(color: Color(0xFF558B2F)),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 13.0,
                                  color: Color(0xFF558B2F),
                                )
                              ],
                            ),
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => SecondScreen())),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
