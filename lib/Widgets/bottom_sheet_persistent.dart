import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomSheetPersistentWidget extends StatefulWidget {
  const BottomSheetPersistentWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BottomSheetPersistentWidgetState();
  }
}

class BottomSheetPersistentWidgetState
    extends State<BottomSheetPersistentWidget> {
  String filePath = "lib/Widgets/bottom_sheet_persistent.dart";
  String codeLink = "https://www.google.com/";

  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Bottom Sheet (Persistent)'),
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
    return Scaffold(
      key: scaffoldState,
      body: Center(
        child: ElevatedButton(
          child: const Text('Show Bottom Sheet'),
          onPressed: () {
            var bottomSheetController = scaffoldState.currentState
                ?.showBottomSheet((context) => Container(
                      color: Colors.blueGrey,
                      child: const Center(
                        child: Text(
                          'Persistent Bottom Sheet',
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ));
            bottomSheetController?.closed.then(
                (value) => Fluttertoast.showToast(msg: "Bottom Sheet Closed"));
          },
        ),
      ),
    );
  }
}
