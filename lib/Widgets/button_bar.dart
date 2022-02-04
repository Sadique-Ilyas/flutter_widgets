import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class ButtonBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ButtonBarWidgetState();
  }
}

class ButtonBarWidgetState extends State<ButtonBarWidget> {
  String filePath = "lib/Widgets/button_bar.dart";
  String codeLink = "https://www.google.com/";
  bool isShow = true;

  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  Widget output() {
    return Center(
      child: ButtonBar(
        alignment: MainAxisAlignment.center,
        buttonHeight: 70.0,
        buttonMinWidth: 100.0,
        buttonTextTheme: ButtonTextTheme.accent,
        buttonPadding: const EdgeInsets.all(8.0),
        children: <Widget>[
          RaisedButton(
            child: Text(isShow == true ? 'Disabled' : 'Click !'),
            onPressed: isShow == true
                ? null
                : () {
                    setState(() {
                      isShow = true;
                    });
                  },
            textColor: Colors.green,
            disabledTextColor: Colors.red,
          ),
          RaisedButton(
            child: Text(isShow == false ? 'Disabled' : 'Click !'),
            onPressed: isShow == false
                ? null
                : () {
                    setState(() {
                      isShow = false;
                    });
                  },
            textColor: Colors.green,
            disabledTextColor: Colors.red,
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Button Bar'),
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
}
