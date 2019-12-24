import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iot_app/pages/details_page.dart';
import 'package:iot_app/pages/home_page.dart';
import 'package:iot_app/pages/login_page.dart';

//void main() => runApp(MyApp());

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IOT App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/" : (_) => LoginPage(),
        "/home" : (_) => HomePage(),
        "/detail" : (_) => DetailsPage(),
      },
    );
  }
}
