import 'package:flutter/material.dart';
import 'package:iot_app/res/colors.dart';
import 'package:switches_kit/src/LabeledSwitch.dart';

class DetailsPage extends StatefulWidget {
  final dynamic category;

  DetailsPage({this.category});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DetailsPageState();
  }
}

class _DetailsPageState extends State<DetailsPage> {
  bool switchValue = true;


  List<dynamic> images = [
    {'url': "assets/images/no-image.png", 'title': 'First', 'status': false},
    {'url': "assets/images/no-image.png", 'title': 'Second', 'status': true},
    {'url': "assets/images/no-image.png", 'title': 'Third', 'status': false},
    {'url': "assets/images/no-image.png", 'title': 'Fourth', 'status': false},
    {'url': "assets/images/no-image.png", 'title': 'Fifth', 'status': false},
    {'url': "assets/images/no-image.png", 'title': 'Sixth', 'status': true},
  ];

  String selectedImage;
  String selectedImageTitle;

  @override
  initState(){
    super.initState();
    selectedImage = 'https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png';
    selectedImageTitle = '';
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.category['title']),
      ),
      body: SafeArea(
        child: Container(
          color: mainBg,
          padding: EdgeInsets.all(10.0),
          child: _buildList(context),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context) {

    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text('Devices Status',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
          childAspectRatio: 16/12,
              crossAxisCount: 2,
              physics:
              BouncingScrollPhysics(), //change the number as you want
              children: images.map((url) {
//                    return Card(child: Image.network(url['url']));
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      url['status'] = url['status'] == true ? false : true ;
                    });
//                    Navigator.push(
//                      context,
//                      MaterialPageRoute(
//                          builder: (context) => DetailsPage(category: url)
//                      ),
//                    );
                  },
                  child: Card(
                    child: new Container(
                      color: url['status'] == true ? Colors.lightBlueAccent : Colors.red,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
//                                height: 100,
                              child:Column(
                                children: <Widget>[

                                  SizedBox(height: 5.0,),
                                  Container(
                                    child: Text(url['title']),
                                  ),

                                  SizedBox(height: 5.0,),
                                  Expanded(
                                    child: Container(
                                        child: Image.asset(url['url']),
                                      ),
                                  ),
                                  SizedBox(height: 5.0,),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: url['status'] == true ? Text('Status: ON') : Text('Status: OFF'),
                                  ),
                                  SizedBox(height: 10.0,)
                                ],
                              ),

                            ),

                          ],
                        )
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        ],
      )
        ,
    );
  }
}
