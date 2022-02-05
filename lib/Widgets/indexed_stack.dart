import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class IndexedStackWidget extends StatefulWidget {
  const IndexedStackWidget({Key? key}) : super(key: key);

  @override
  _IndexedStackWidgetState createState() => _IndexedStackWidgetState();
}

class _IndexedStackWidgetState extends State<IndexedStackWidget> {
  String filePath = "lib/Widgets/indexed_stack.dart";
  String codeLink = "https://www.google.com/";
  int i = 0;

  final widget_list = [
    Container(
      color: Colors.red,
      child: Center(
        child: Text(
          'Page 1',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Center(
        child: Text(
          'Page 2',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
    Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          'Page 3',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Indexed Stack'),
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
    return Column(
      children: <Widget>[
        Expanded(
            child: IndexedStack(
          index: i,
          children: widget_list,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    if (i > 0) {
                      i--;
                    } else {
                      i = widget_list.length - 1;
                    }
                  });
                }),
            IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  setState(() {
                    if (i < widget_list.length - 1) {
                      i++;
                    } else {
                      i = 0;
                    }
                  });
                }),
          ],
        )
      ],
    );
  }
}
