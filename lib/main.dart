import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,                      //signup page
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatefulWidget {
  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

void showToast(String s) {
  Fluttertoast.showToast(
      msg: s,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.blueGrey[700],
      textColor: Colors.white);
}

class HomePageState extends State<HomeScreen> {
  final formKey = GlobalKey<FormState>();
  int flag = 0;

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
                  'Sign Up',
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
                  'Enter your email address to register on Koyn.',
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
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: Form(
                    key: formKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        disabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                        hintText: 'Phone Number',
                      ),
                      validator: (number) {
                        {
                          Pattern pattern = r'^[6-9]\\d{5,14}$';
                          RegExp regex = new RegExp(pattern);
                          if (number.isEmpty) {
                            return "";
                          } else
                            return null;
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[350],
                  ),
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                      disabledBorder: InputBorder.none,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(10),
                      hintText: 'Email',
                    ),
                    validator: (pass) {
                      {
                        Pattern pattern =
                            r'((?=.*?[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,})';
                        RegExp regex = new RegExp(pattern);
                        if (!regex.hasMatch(pass)) {
                          return "";
                        } else
                          return null;
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  height: 60,
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
                    validator: (pass) {
                      {
                        Pattern pattern =
                            r'((?=.*?[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,})';
                        RegExp regex = new RegExp(pattern);
                        if (!regex.hasMatch(pass)) {
                          return "";
                        } else
                          return null;
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(35, 6, 45, 14),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text("a \n Lowercase", textAlign: TextAlign.center),
                      Text("A \n Uppercase", textAlign: TextAlign.center),
                      Text("# \n Special", textAlign: TextAlign.center),
                      Text("6+ \n Characters", textAlign: TextAlign.center),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 5, 20, 0),
                  height: 60,
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
                      hintText: 'Confirm Password',
                    ),
                    validator: (pass) {
                      {
                        Pattern pattern =
                            r'((?=.*?[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,})';
                        RegExp regex = new RegExp(pattern);
                        if (!regex.hasMatch(pass)) {
                          return "";
                        } else
                          return null;
                      }
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(78, 40, 82, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Tapping on sign up, I agree to all '),
                                  TextSpan(
                                      text: 'Terms and Conditions',
                                      style: TextStyle(
                                          color: Colors.blueGrey[700],
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 7, 20, 0),
                        width: MediaQuery.of(context).size.width,
                        child: RaisedButton(
                          onPressed: () {
                            if (!formKey.currentState.validate()) {
                              showToast("Invalid phone number or Password");
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.fromLTRB(90, 17, 90, 14),
                          color: Colors.blueGrey[700],
                          child: Text(
                            "Sign Up",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          elevation: 10,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 50, 0, 5),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                children: <TextSpan>[
                                  TextSpan(text: 'Already have an account?'),
                                  TextSpan(
                                      text: ' Log In',
                                      style: TextStyle(
                                          color: Colors.blueGrey[700],
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold))
                                ]),
                          ),
                        ),
                      ),
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
}
