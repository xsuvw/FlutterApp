import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Center Text"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("+"),
        ),
      ),
    )
  );
}