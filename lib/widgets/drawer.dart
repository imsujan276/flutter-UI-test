import 'package:flutter/material.dart';
import 'package:iot_app/pages/home_page.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[

          UserAccountsDrawerHeader(
            accountName: Text("My Name"),
            accountEmail: Text("myenamil@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor:
              Theme.of(context).platform == TargetPlatform.iOS
                  ? Colors.blue
                  : Colors.white,
              child: Text(
                "M",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),

          ListTile(
            title: Text("Ttem 1"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => HomePage()));
            },
          ),
          ListTile(
            title: Text("Item 2"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.of(context).pop();
              print('tapped item 2');
            },
          ),
        ],
      ),
    );
  }

}