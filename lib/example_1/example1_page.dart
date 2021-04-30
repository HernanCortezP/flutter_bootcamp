import 'package:flutter/material.dart';

class Example1Page extends StatefulWidget {
  @override
  _Example1PageState createState() => _Example1PageState();
}

class _Example1PageState extends State<Example1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  AppBar _appBar() {
    return AppBar(title: Text('Example1'));
  }

  Widget _body() {
    return Center(
      child: Container(
        child: Text(
          'Hello World',
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
    );
  }
}
