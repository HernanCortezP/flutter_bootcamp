import 'package:flutter/material.dart';

import 'package:flutter_bootcamp/example_2/example2_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor:
              Colors.redAccent[700], // color de los elementos principales
          accentColor: Colors.purple[400],
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Theme.of(context).primaryColor)),
      home: Example2Page(),
    );
  }
}
