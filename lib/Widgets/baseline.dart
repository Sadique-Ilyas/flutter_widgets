import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class BaselineWidget extends StatefulWidget {
  const BaselineWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BaselineWidgetState();
  }
}

class BaselineWidgetState extends State<BaselineWidget> {
  String filePath = "lib/Widgets/baseline.dart";
  String codeLink = "https://www.google.com/";

  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Baseline'),
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
      child: Container(
        height: 300,
        width: 300,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.red,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Baseline(
          child: Center(
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.green),
              width: 60.0,
              height: 60.0,
              child: const Icon(Icons.star),
            ),
          ),
          baseline: 10.0,
          baselineType: TextBaseline.alphabetic,
        ),
      ),
    );
  }
}
