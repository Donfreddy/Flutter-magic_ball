import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue[900],
        ),
        body: Magic8ballPage(),
      ),
    ),
  );
}

class Magic8ballPage extends StatefulWidget {
  @override
  _Magic8ballPageState createState() => _Magic8ballPageState();
}

class _Magic8ballPageState extends State<Magic8ballPage> {
  int num = 1;

  void _random() {
    setState(() {
      num = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        child: Image.asset('images/ball$num.png'),
        onPressed: _random
      ),
    );
  }
}
