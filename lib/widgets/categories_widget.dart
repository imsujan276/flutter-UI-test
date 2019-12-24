import 'package:flutter/material.dart';
import 'package:iot_app/pages/details_page.dart';
import 'package:iot_app/res/colors.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CategoriesWidgetState();
  }
}

class CategoriesWidgetState extends State<CategoriesWidget> {
  List<dynamic> images = [
    {'url': "assets/images/no-image.png", 'title': 'First'},
    {'url': "assets/images/no-image.png", 'title': 'Second'},
    {'url': "assets/images/no-image.png", 'title': 'Third'},
    {'url': "assets/images/no-image.png", 'title': 'Fourth'},
    {'url': "assets/images/no-image.png", 'title': 'Fifth'},
    {'url': "assets/images/no-image.png", 'title': 'Sixth'},
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(10.0),
          color: mainBg,
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0),
              Container(
                child: Center(
                  child: Text(
                    'Categories',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Expanded(
                child: GridView(
                  physics:
                      BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3), //change the number as you want
                  children: images.map((url) {
//                    return Card(child: Image.network(url['url']));
                  return GestureDetector(
                    onTap: () {
                      print(url['title']);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailsPage(category: url)
                        ),
                      );
                    },
                    child: Card(
                      child: new Container(
                          child: Stack(
                            children: <Widget>[
                              Container(
                                width: double.infinity,
//                                height: 100,
                                child:Image.asset(url['url']),

                              ),

                            ],
                          )
                      ),
                    ),
                  );
                  }).toList(),
                ),
              ),
              Container(
                child: ListTile(
                  contentPadding: EdgeInsets.fromLTRB(10.0, 0.0, 150.0, 0.0),
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    child: Text('6'),
                  ),
                  trailing: Text(
                    'Devices Connected',
                    style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: Colors.white70),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
