import 'package:flutter/material.dart';

class UserHistory extends StatefulWidget {
  @override
  _UserHistoryState createState() => _UserHistoryState();
}

class _UserHistoryState extends State<UserHistory> {
  @override
  Widget build(BuildContext context) {
    var items = [
      {
        'name': 'Iphone 12',
        'img': 'iphone',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Note 20 Ultra',
        'img': 'note20ultra',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Macbook Air',
        'img': 'macbookAir',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Macbook Pro',
        'img': 'macbookPro',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Gaming PC',
        'img': 'gamingPC',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Backlit Keyboard',
        'img': 'backlitKeyboard',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Mercedes',
        'img': 'mercedes',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
      {
        'name': 'Mutton',
        'img': 'mutton',
        'ratings': '5.0',
        'reviews': '23',
        'price': '10',
      },
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          title: Center(
            child: Text("Ecom App UI",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )
            )
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[350]),
                  ),
                  hintText: 'Username',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 10,
                bottom: 10,
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "History",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return historyItem(items[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}

Widget historyItem(data) {
  return ListTile(
    leading: Container(
        child: CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage('assets/${data["img"]}.jpg'),
    )),
    title: Text(data['name'], style: TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow[600],
        ),
        Text(" ${data['ratings']}"),
        Text(' (${data['reviews']} Reviews)'),
      ],
    ),
    trailing: Text('\$${data["price"]}'),
  );
}
