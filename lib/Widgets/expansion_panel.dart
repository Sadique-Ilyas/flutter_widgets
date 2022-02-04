import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExpansionPanelWidget extends StatefulWidget {
  const ExpansionPanelWidget({Key? key}) : super(key: key);

  @override
  _ExpansionPanelWidgetState createState() => _ExpansionPanelWidgetState();
}

class _ExpansionPanelWidgetState extends State<ExpansionPanelWidget> {
  bool active = false;
  String filePath = "lib/Widgets/expansion_panel.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Expanded'),
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
    return _expansionPanel();
  }

  _expansionPanel() {
    return ListView(
      children: <Widget>[
        ExpansionPanelList(
          expansionCallback: (index, expanded) {
            setState(() {
              active = !active;
            });
          },
          children: <ExpansionPanel>[
            ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text('Header of Item'),
                  );
                },
                body: ListTile(
                  title: Text('Body of item'),
                  subtitle: Text('Sub title of item'),
                  trailing: Icon(Icons.favorite),
                  onTap: () {
                    Fluttertoast.showToast(msg: "Clicked !");
                  },
                ),
                isExpanded: active)
          ],
        )
      ],
    );
  }
}
