import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AppBarState();
  }
}

class AppBarState extends State<AppBarWidget> {
  String filePath = "lib/Widgets/app_bar.dart";
  String codeLink = "https://www.google.com/";

  List<String> choices = ["Themes", "Sign Out", "Settings"];

  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
    // return myScaffold();
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('App Bar'),
      leading: const Icon(Icons.menu),
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
      backgroundColor: Colors.blue,
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.add),
            splashColor: Colors.grey,
            onPressed: () {
              Fluttertoast.showToast(msg: "Add");
            }),
        IconButton(
            icon: const Icon(Icons.delete),
            splashColor: Colors.grey,
            onPressed: () {
              Fluttertoast.showToast(msg: "Delete");
            }),
        PopupMenuButton<String>(
          onSelected: selected,
          itemBuilder: (BuildContext context) {
            return choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        )
      ],
    );
  }

  Widget output() {
    return const Center(child: Text('App Bar Above'));
  }

  void selected(String item) {
    Fluttertoast.showToast(
        msg: item, backgroundColor: Colors.green, textColor: Colors.white);
  }
}
