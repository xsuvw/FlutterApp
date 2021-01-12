import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CardLayout(),
  ));
}

class CardLayout extends StatelessWidget {              //Stack Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.pink,
            height: 550.0,
            width: 300.0,
          ),
          Container(
            color: Colors.blue,
            height: 500.0,
            width: 250.0,
          )
        ],
      ),
    );
  }
}
