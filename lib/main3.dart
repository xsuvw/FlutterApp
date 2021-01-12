import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          centerTitle: true,
        ),
        backgroundColor: Colors.lightBlue[100],
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.fromLTRB(20, 200, 20, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [new BoxShadow(color: Colors.lightBlue[200])]),
              child: Column(
                children: <Widget>[
                  TextField(
                      obscureText: false,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                          contentPadding: EdgeInsets.all(20.0))),
                  SizedBox(
                    height: 40,
                  ),
                  TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          contentPadding: EdgeInsets.all(20.0))),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    child: RaisedButton(
                      onPressed: () {
                        showToast();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                      color: Colors.lightBlue[500],
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      elevation: 10,
                    ),
                  )
                ],
              )),

          // Image(
          //   image: NetworkImage('https://picsum.photos/250?image=9'),
          // ),
          // Image(
          //   image: AssetImage('images/study.jpg'),
          // ),
          // Icon(
          //   Icons.email,
          //   color: Colors.red,
          //   size: 50,
          // ),
          // IconButton(
          //   icon: Icon(Icons.email),
          //   iconSize: 50,
          //   onPressed: () { },
          // )
        ));
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "Hey, I'm a toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blue[600],
        textColor: Colors.white);
  }
}
