import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blueGrey[700]),
                width: MediaQuery.of(context).size.width,
                height: 250,
                padding: EdgeInsets.fromLTRB(20, 100, 20, 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Log in',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                    ),
                    Text(
                      'Enter your login details to access your account.',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.fromLTRB(20, 80, 10, 0)),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Email/Phone Number',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[350],
                      ),
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                          hintText: 'Password',
                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 70, 20, 0),
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        onPressed: () {
                          showToast();
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: EdgeInsets.fromLTRB(137, 17, 143, 14),
                        color: Colors.blueGrey[700],
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        elevation: 10,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            child: Text(
                              "or",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.fromLTRB(0, 12, 0, 0),
                          ),
                          Container(
                            child: Text(
                              "Forgot email?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            margin: EdgeInsets.fromLTRB(0, 12, 0, 100),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                              child: RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    children: <TextSpan>[
                                      TextSpan(text: 'Here for the first time?'),
                                      TextSpan(
                                          text: ' Sign Up',
                                          style: TextStyle(
                                              color: Colors.blueGrey[700],
                                              fontWeight: FontWeight.bold))
                                    ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "Hey, I'm a toast",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.blueGrey[700],
        textColor: Colors.white);
  }
}
