import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  _ExpandedWidgetState createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  String filePath = "lib/Widgets/expanded.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Expanded'),
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
    return Row(
      children: <Widget>[
        Expanded(
          child: squareBox(),
          flex: 1,
        ),
        Expanded(
          child: squareBox(),
          flex: 3,
        ),
        squareBox(),
      ],
    );
  }

  squareBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 80,
        height: 80,
        color: Colors.red,
      ),
    );
  }
}
