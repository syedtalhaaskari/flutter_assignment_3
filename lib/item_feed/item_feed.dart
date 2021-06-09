import 'package:flutter/material.dart';

class ItemFeed extends StatefulWidget {
  @override
  _ItemFeedState createState() => _ItemFeedState();
}

class _ItemFeedState extends State<ItemFeed> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    var items = [
      {
        'name': 'Iphone 12',
        'img': 'iphone',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Note 20 Ultra',
        'img': 'note20ultra',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Macbook Air',
        'img': 'macbookAir',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Macbook Pro',
        'img': 'macbookPro',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Gaming PC',
        'img': 'gamingPC',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Backlit Keyboard',
        'img': 'backlitKeyboard',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Mercedes',
        'img': 'mercedes',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
      },
      {
        'name': 'Mutton',
        'img': 'mutton',
        'ratings': 5.0,
        'reviews': 23,
        'price': 90,
        'pieces': 20,
        'quantity': 1,
        'width': width,
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
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return item(items[index]);
        },
      ),
    );
  }
}

Widget item(data) {
  return Center(
    child: Container(
      width: data['width'] * 0.94,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: data['width'] * 0.4,
                maxHeight: data['width'] * 0.4,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                  image: AssetImage('assets/${data["img"]}.jpg'),
                ),
              ),
            ),
            Flexible(
              child: ListTile(
                title: Text(
                  data['name'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                subtitle: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(children: [
                        Icon(Icons.star, color: Colors.yellow[600]),
                        Text(" ${data['ratings']} (${data['reviews']} Review)"),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text("${data["pieces"]} Pieces "),
                          Text(
                            "\$${data["price"]}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purple,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          Text("Quantity: ${data["quantity"]}"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
