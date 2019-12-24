import 'package:flutter/material.dart';

import 'colors.dart';

const String logo = "assets/images/logo.jpg";

const TextStyle smallText = const TextStyle(fontSize: 12.0);

final topAppBar = AppBar(
  title: Text('Title'),
  centerTitle: true,
//  leading: Padding(
//    padding: EdgeInsets.only(left: 12),
//    child: IconButton(
//      icon: Icon(Icons.add),
//      onPressed: () {
//        print('Click leading');
//      },
//    ),
//  ),
  actions: <Widget>[
    IconButton(
      icon: Icon(Icons.person),
      onPressed: () {
        print('Click search');
      },
    ),
  ],
);

final bottomTabNavBar = TabBar(
  tabs: [
    Tab(
      icon: new Icon(Icons.home),
    ),
    Tab(
      icon: new Icon(Icons.rss_feed),
    ),
  ],
  labelColor: accent,
  unselectedLabelColor: Colors.blue,
  indicatorSize: TabBarIndicatorSize.label,
  indicatorPadding: EdgeInsets.all(5.0),
  indicatorColor: Colors.red,
);
