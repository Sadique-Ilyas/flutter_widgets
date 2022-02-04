import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_widgets/detailed_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CardWidgetState();
  }
}

class CardWidgetState extends State<CardWidget> {
  String filePath = "lib/Widgets/card.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Card'),
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
    return Center(
      child: SizedBox(
        width: 250,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: Colors.white,
          elevation: 10.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 50.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 30.0,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 20.0,
                          child: Icon(
                            Icons.star,
                            size: 40.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Captain America',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //left
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // center vertical
                      children: const <Widget>[
                        Icon(Icons.thumb_up_sharp),
                        Text('2M')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //left
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // center vertical
                      children: const <Widget>[
                        Icon(Icons.people),
                        Text('7.5M')
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //left
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // center vertical
                      children: const <Widget>[
                        Icon(Icons.visibility),
                        Text('12M')
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // center horizontal
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // center vertical
                    children: const <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      Text(
                        "Following",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.check, color: Colors.white)
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.lightBlue)),
                  onPressed: () {
                    Fluttertoast.showToast(msg: "Following");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
