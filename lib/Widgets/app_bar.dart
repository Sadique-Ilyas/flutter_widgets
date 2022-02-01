import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

List<String> choices = ["Themes", "Sign Out", "Settings"];

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return AppBarState();
  }
}

class AppBarState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), sourceCode());
    // return myScaffold();
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('App Bar'),
      leading: const Icon(Icons.menu),
      bottom: const TabBar(
        tabs: [
          Tab(text: 'Output'),
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
    return const Center(child: Text('App Bar'));
  }

  Widget sourceCode() {
    return const Center(child: Text('Source Code'));
  }

  void selected(String item) {
    Fluttertoast.showToast(
        msg: item, backgroundColor: Colors.green, textColor: Colors.white);
  }
}
