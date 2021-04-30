import 'package:flutter/material.dart';

class Example2Page extends StatefulWidget {
  @override
  _Example2PageState createState() => _Example2PageState();
}

class _Example2PageState extends State<Example2Page> {
  dynamic _colorText = new TextStyle(fontSize: 30, color: Colors.blue);
  int _number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: _body(),
        floatingActionButton: Column(mainAxisSize: MainAxisSize.min, children: [
          _fabDecrement(),
          SizedBox(height: 15),
          _fabIncrement()
        ]));
  }

  // ---------- WIDGETS ------------
  AppBar _appBar() {
    return AppBar(title: Text('Example1'));
  }

  Widget _body() {
    return Center(
      child: Container(
        child: Text(
          'The number is: $_number',
          style: _colorText,
        ),
      ),
    );
  }

  Widget _fabIncrement() {
    return FloatingActionButton.extended(
        backgroundColor: Colors.green,
        onPressed: _incrementNumber,
        label: Text('Incement'),
        icon: Icon(Icons.add));
  }

  Widget _fabDecrement() {
    return FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: _decrementNumber,
        label: Text('Decrement'),
        icon: Icon(Icons.remove));
  }

// ********** LOGICA ***********

  void _incrementNumber() {
    _number++;
    if (_number % 2 == 0) {
      _colorText = new TextStyle(fontSize: 30, color: Colors.blue);
    } else {
      _colorText = new TextStyle(fontSize: 30, color: Colors.red);
    }
    setState(() {});
  }

  void _decrementNumber() {
    _number--;
    if (_number % 2 == 0) {
      _colorText = new TextStyle(fontSize: 30, color: Colors.blue);
    } else {
      _colorText = new TextStyle(fontSize: 30, color: Colors.red);
    }
    setState(() {});
  }
}
