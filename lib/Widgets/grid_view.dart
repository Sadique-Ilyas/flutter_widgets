import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_widgets/detailed_page.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  String filePath = "lib/Widgets/fractionally_sized_box.dart";
  String codeLink = "https://www.google.com/";
  @override
  Widget build(BuildContext context) {
    return DetailedPage.tabBar(appBar(), output(), filePath, codeLink);
  }

  AppBar appBar() {
    return AppBar(
      title: Text('Grid View'),
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
    return Container(
        child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
            children: <String>[
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
              'https://picsum.photos/200?nocache=${DateTime.now().millisecondsSinceEpoch + Random().nextInt(1000)}',
              //Random Picture
            ].map((url) {
              return GridTile(
                child: Image.network(
                  url,
                  loadingBuilder: (context, child, progress) {
                    return progress == null ? child : Icon(Icons.image);
                  },
                  fit: BoxFit.cover,
                ),
              );
            }).toList()));
  }
}
