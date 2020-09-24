import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopPlank extends StatelessWidget {
  const TopPlank({
    Key key,
  }) : super(key: key);

  static List<Map> timePeriods = [
    {"time": '07:12', "active": false},
    {"time": '12:43', "active": true},
    {"time": '15:29', "active": false},
    {"time": '18:11', "active": false},
    {"time": '19:53', "active": false}
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(width: 1.0, color: Color(0xFFD1D1D6)),
            top: BorderSide(width: 1.0, color: Color(0xFFD1D1D6))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          buildLocationBtn(),
          buildTimePeriods(),
          buildNotificationBtn()
        ],
      ),
    );
  }

  InkWell buildLocationBtn() {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            SvgPicture.asset("assets/icons/location.svg", height: 24),
            SizedBox(
              width: 5,
            ),
            Text(
              'Москва',
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF558B2F)),
            )
          ],
        ),
      ),
      onTap: () => {print('tap')},
    );
  }

  Row buildTimePeriods() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (var i = 0; i < timePeriods.length; i++)
          Container(
            decoration: timePeriods[i]['active'] == false
                ? null
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1.0, color: Color(0xFF558B2F)),
                  ),
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Text(timePeriods[i]['time'],
                style: timePeriods[i]['active'] == false
                    ? null
                    : TextStyle(color: Color(0xFF558B2F))),
          ),
      ],
    );
  }

  IconButton buildNotificationBtn() {
    return IconButton(
      icon: SvgPicture.asset("assets/icons/notifications.svg", height: 24),
      onPressed: () => print('kek'),
    );
  }
}
