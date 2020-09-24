import 'package:flutter/material.dart';

List<Map> items = [
  {
    "image": 'assets/images/image24.png',
    "title": 'Утренний азкар №1',
    "descriptionTop":
        'О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)',
    "descriptionBottom":
        'Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана `абду-кя, ва ана `аля `ахди-кя ва ва`ди-кя ма-стата`ту. А`узу би-кя мин шарри ма сана`ту, абу`у ля-кя би-ни`мати-кя `аляййя, ва абу`у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!'
  },
  {
    "image": 'assets/images/image24.png',
    "title": 'Утренний азкар №2',
    "descriptionTop":
        'О Аллах, Ты - Господь мой, и нет достойного поклонения, кроме Тебя, Ты создал меня, а я -Твой раб, и я буду хранить верность Тебе, пока у меня хватит сил. Прибегаю к Тебе от зла того, что я сделал, признаю милость, оказанную Тобой мне, и признаю грех свой. Прости же меня, ибо, поистине, никто не прощает грехов, кроме Тебя! (Бухари)',
    "descriptionBottom":
        'Аллахумма, Анта Рабби, ля иляха илля Анта, халякта-ни ва ана `абду-кя, ва ана `аля `ахди-кя ва ва`ди-кя ма-стата`ту. А`узу би-кя мин шарри ма сана`ту, абу`у ля-кя би-ни`мати-кя `аляййя, ва абу`у би-занби, фа-гфир ли, фа-инна-ху ля йагфи-ру-з-зунуба илля Анта!'
  },
];

class ListPrayersItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1.0, color: Color(0xFFD1D1D1)))),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(width: 1.0, color: Color(0xFFD1D1D1)))),
                child: ListTile(
                  title: Text(
                    items[index]['title'],
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 17.0),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/image24.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      items[index]['descriptionTop'],
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      items[index]['descriptionBottom'],
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
