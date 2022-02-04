import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class ConstrainedBoxWidget extends StatefulWidget {
  const ConstrainedBoxWidget({Key? key}) : super(key: key);

  @override
  _ConstrainedBoxWidgetState createState() => _ConstrainedBoxWidgetState();
}

class _ConstrainedBoxWidgetState extends State<ConstrainedBoxWidget> {
  String filePath = "lib/Widgets/constrained_box.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Constrained Box'),
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
    return _constrainedBoxExample();
  }

  Widget _constrainedBoxExample() {
    return ConstrainedBox(
      constraints: BoxConstraints(
          maxHeight: 300, maxWidth: 300, minHeight: 200, minWidth: 200),
      child: Container(
        width: 200,
        // if container width is increased to 1000, it won't increase because maxWidth of BoxConstraints is set to 300, same for minWidth
        height: 200,
        // if container height is increased to 1000, it won't increase because maxHeight of BoxConstraints is set to 300, same for minHeight
        color: Colors.blue,
        child: Center(
            child: Text(
          'Constrained Box',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
