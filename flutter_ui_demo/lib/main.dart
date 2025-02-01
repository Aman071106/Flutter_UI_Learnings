//imports
import 'package:flutter/material.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/LoginPage.dart';

// import 'package:flutter_ui_demo/IndividualWidgets/QuickLinksPages.dart';

//for log

//used widgets imports

import 'package:flutter_ui_demo/Project_learnigs_testing/actorProfile.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/cafetaria.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/customSplash.dart';
import 'package:flutter_ui_demo/Project_learnigs_testing/listview.dart';

class MyMain extends StatelessWidget {
  //child of stl widget
  const MyMain({super.key});
  //super.key is calling syntax for parent class(Stl) constructor{which expect optional key parameter} for providing the reference of Mywidget1 to the stl, so that during updates the network of widgets get updated which will come later
  //stateless widget can be instantitated at compile time only so we use const keyword with constructor of class,

  //static const is required key word for constant values that are fields of class not the constructor
  static const mssg = "Hello mssg"; //every object of it  can use it

  @override //overriding the func in stl to use it herre, return type is widget
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //remove debug banner
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: Colors.deepPurple,
          appBarTheme: AppBarTheme(
            //if we don't define appbaar theme then it will become transparent
            backgroundColor:
                Colors.deepPurple, // Explicitly set the AppBar color
          ),
        ),
        home: Cafeteria());
  }
}

void main() {
  //ListView'S LIST
  // Stateobj.buildlist();
  //see log messages in debug console, it is a simple log which prints string-note we can filter them in debug console search bar
  // log(Stateobj.cards.toString());
  runApp(
      MyMain()); //new keyword is not required because in newer dart versions and directly an object can be created
}
