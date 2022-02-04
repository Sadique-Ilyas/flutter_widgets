import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  String filePath = "lib/Widgets/container.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Container'),
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
    return _containerExample();
  }

  Widget _containerExample() {
    return Container(
      margin: EdgeInsets.all(60),
      padding: EdgeInsets.all(55),
      child: Text(
        'Hello Container',
        style: TextStyle(fontSize: 30),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
    );
  }
}
