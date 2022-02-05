import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  _StackWidgetState createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  String filePath = "lib/Widgets/stack.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Stack'),
      bottom: const TabBar(
        tabs: [
          Tab(text: 'Widget'),
          Tab(
            text: 'Source Code',
          ),
        ],
        labelColor: Colors.black,
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.white,
      ),
    );
  }

  Widget output() {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/pic12.jpg'), fit: BoxFit.fill)),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Card(
            color: Colors.black,
            elevation: 8.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Temperature Max ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '30°C',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Temperature Min ',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '-10°C',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 150),
          child: Column(
            children: <Widget>[
              Text(
                'New York',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
              Text(
                'USA',
                style: TextStyle(fontSize: 25.0, fontStyle: FontStyle.italic),
              ),
              Text(
                '15 °C',
                style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
