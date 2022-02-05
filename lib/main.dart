import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/home_page.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage()
      // home: AnimatedSplashScreen(
      //   nextScreen: const HomePage(),
      //   duration: 3000,
      //   curve: Curves.decelerate,
      //   splash: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       Expanded(
      //           flex: 1,
      //           child: Image(image: AssetImage("assets/flutter_bird_1.png"))),
      //       Text('Flutter')
      //     ],
      //   ),
      //   splashTransition: SplashTransition.fadeTransition,
      //   pageTransitionType: PageTransitionType.leftToRight,
      // ),
    );
  }
}
