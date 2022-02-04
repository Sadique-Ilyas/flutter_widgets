import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class DividerWidget extends StatefulWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  _DividerWidgetState createState() => _DividerWidgetState();
}

class _DividerWidgetState extends State<DividerWidget> {
  String filePath = "lib/Widgets/divider.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Divider'),
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            VerticalDivider(),
            Container(
              color: Colors.purple,
              width: 50,
              height: 50,
            )
          ],
        ),
        Divider(
          height: 20,
          thickness: 5,
          color: Colors.blueGrey,
          indent: 150,
          endIndent: 150,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
            VerticalDivider(),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text('Vertical Divider implementation will be available'
              ' in the default channel very soon, but for now you '
              'have to switch to the dev channel to use it:'),
        ),
        Text(
          ' flutter channel dev',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
