import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class DetailedPage {
  static tabBar(
      AppBar appBar, Widget output, String filePath, String codeLink) {
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
                  return Scaffold(
                    backgroundColor: Colors.black,
                    body: sourceCode(filePath, codeLink),
                  );
                  // return sourceCode(filePath, codeLink);
                },
              ),
            ],
          ),
        ));
  }
}

Widget sourceCode(String filePath, String codeLink) {
  return SourceCodeView(
    filePath: filePath,
    codeLinkPrefix: codeLink,
    // iconBackgroundColor: Colors.amber,
    // iconForegroundColor: Colors.cyan,
    labelBackgroundColor: Colors.red,
    labelTextStyle: const TextStyle(fontSize: 50),
    showLabelText: true,
    syntaxHighlighterStyle: SyntaxHighlighterStyle(
      baseStyle: TextStyle(color: Colors.lightBlueAccent.shade100),
      classStyle: const TextStyle(color: Colors.greenAccent),
      commentStyle: const TextStyle(color: Colors.lightGreen),
      stringStyle: const TextStyle(color: Colors.orange),
      keywordStyle: TextStyle(color: Colors.blue.shade500),
      numberStyle: TextStyle(color: Colors.yellowAccent.shade100),
      constantStyle: const TextStyle(color: Colors.lightGreen),
      punctuationStyle: const TextStyle(color: Colors.yellow),
    ),
  );
}
