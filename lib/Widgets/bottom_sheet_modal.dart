import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomSheetModalWidget extends StatefulWidget {
  const BottomSheetModalWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return BottomSheetModalWidgetState();
  }
}

class BottomSheetModalWidgetState extends State<BottomSheetModalWidget> {
  String filePath = "lib/Widgets/bottom_sheet_modal.dart";
  String codeLink = "https://www.google.com/";

  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Bottom Sheet (Modal)'),
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
      child: ElevatedButton(
        child: const Text('Show Bottom Sheet'),
        onPressed: () {
          _showModalBottomSheet(context);
        },
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    Future<void> future = showModalBottomSheet(
        // context: scaffoldState.currentState.context,
        context: context,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(350), topRight: Radius.circular(350))),
        backgroundColor: Colors.yellow,
        barrierColor: Colors.green[100],
        elevation: 20,
        clipBehavior: Clip.antiAlias,
        builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      'Modal Bottom Sheet',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    const TextField(),
                    const TextField(),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: const TextField(),
                    ),
                  ],
                ),
              ),
            ));
    future.then((value) => Fluttertoast.showToast(msg: "Bottom Sheet Closed"));
  }
}
