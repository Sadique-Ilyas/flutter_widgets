import 'package:flutter/material.dart';

class DetailedPage {
  static tabBar(AppBar appBar, Widget output, Widget sourceCode) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: appBar,
          body: TabBarView(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  return output;
                },
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return sourceCode;
                },
              ),
            ],
          ),
        ));
  }
}