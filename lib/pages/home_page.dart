import 'package:flutter/material.dart';
import 'package:iot_app/res/colors.dart';
import 'package:iot_app/res/constants.dart';
import 'package:iot_app/widgets/categories_widget.dart';
import 'package:iot_app/widgets/drawer.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePageState();
  }
  
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: topAppBar,
            bottomNavigationBar: bottomTabNavBar,
            drawer: MyDrawer(),
            body: TabBarView(
              children: [
                CategoriesWidget(),
                Container(
                  color: mainBg,
                  child: Center(
                    child: Text('News Feed',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );

  }
  
}