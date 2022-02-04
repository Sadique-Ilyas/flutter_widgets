import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class ColumnRowWidget extends StatefulWidget {
  const ColumnRowWidget({Key? key}) : super(key: key);

  @override
  _ColumnRowWidgetState createState() => _ColumnRowWidgetState();
}

class _ColumnRowWidgetState extends State<ColumnRowWidget> {
  String filePath = "lib/Widgets/column_row.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Column & Rows'),
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
    return _columnExample();
  }

  Widget _columnExample() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // start of horizontal line
      crossAxisAlignment: CrossAxisAlignment.center,
      // center of vertical line
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Column'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Column'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Column'),
        ),
        _rowExample()
      ],
    );
  }

  Widget _rowExample() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: () {},
          child: Text('Row'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Row'),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text('Row'),
        ),
      ],
    );
  }
}
