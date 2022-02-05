import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class FractionallySizedBoxWidget extends StatefulWidget {
  const FractionallySizedBoxWidget({Key? key}) : super(key: key);

  @override
  _FractionallySizedBoxWidgetState createState() =>
      _FractionallySizedBoxWidgetState();
}

class _FractionallySizedBoxWidgetState
    extends State<FractionallySizedBoxWidget> {
  String filePath = "lib/Widgets/fractionally_sized_box.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Fractionally Sized Box'),
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
        FractionallySizedBox(
          widthFactor: 0.8,
          child: Container(
            color: Colors.amber,
            child: Text(
              '80 % width of screen',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
        ),
        Flexible(
          child: FractionallySizedBox(
              heightFactor: 0.8,
              child: Row(
                children: <Widget>[
                  VerticalDivider(
                    thickness: 15,
                    color: Colors.black,
                  ),
                  Text(
                    '80 % height of screen',
                    style: TextStyle(fontSize: 30.0),
                  )
                ],
              )),
        )
      ],
    );
  }
}
