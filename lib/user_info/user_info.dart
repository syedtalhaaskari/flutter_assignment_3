import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
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
      child: Column(
        children: [
          userHeader({
            'title1': "User",
            'title2': "abc@gmail.com",
            'subtitle': "logout",
            'width': width,
            'height': height,
          }),
          infoHeader(),
          infoItem({
            'title': "Full Name",
            'subtitle': "User",
            'trailing': "Yes",
          }),
          infoItem({
            'title': "Email",
            'subtitle': "user@gmail.com",
            'trailing': "No",
          }),
          infoItem({
            'title': "Phone",
            'subtitle': "+0900-786 01",
            'trailing': "No",
          }),
          infoItem({
            'title': "Address",
            'subtitle': "New York,Random Street House No. 72",
            'trailing': "No",
          }),
          infoItem({
            'title': "Gender",
            'subtitle': "Male",
            'trailing': "No",
          }),
          infoItem({
            'title': "Date of Birth",
            'subtitle': "October 13, 1999",
            'trailing': "No",
          }),
        ],
      ),
    ));
  }
}

Widget userHeader(data) {
  return Container(
    width: data['width'] * 0.94,
    margin: EdgeInsets.only(
      top: 20,
      bottom: 10,
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: data['width'] * 0.4,
            maxHeight: data['width'] * 0.4,
          ),
          child: Image.asset('assets/user_icon.png', fit: BoxFit.fill),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: data['width'] * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Text(
                  data['title1'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
            Container(
              width: data['width'] * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                child: Text(
                  data['title2'],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: data['width'] * 0.5,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 0, 0),
                child: Text(
                  'logout',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.purple,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget infoHeader() {
  return Container(
    margin: EdgeInsets.only(left: 15, top: 10),
    alignment: Alignment.centerLeft,
    child: Text(
      "ACCOUNT INFORMATION",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    ),
  );
}

Widget infoItem(data) {
  return ListTile(
    title: Text(data['title']),
    subtitle: Text(data['subtitle']),
    trailing: data['trailing'] == 'Yes'
        ? IconButton(
            icon: Icon(
              Icons.edit,
            ),
            onPressed: () {},
          )
        : null,
  );
}
