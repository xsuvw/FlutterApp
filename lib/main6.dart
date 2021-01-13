import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,              // Card Widget
    home: CardLayout(),
  ));
}

class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(color: Colors.blue, offset: Offset(-4.0, -4.0))
            ],
          ),
          margin: EdgeInsets.all(15),
          height: 250,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Colors.white,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Software Engineer',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[700]),
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              '1 hr',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey[600]),
                            ))
                      ],
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 3, 0, 0)),
                    Text(
                      'Columbus, OH',
                      style: TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                    Text(
                      '#healthcare',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                    Text(
                      '#covid19',
                      style: TextStyle(color: Colors.grey[400], fontSize: 12),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
                    Text(
                      'Trump administration’s response to Covid-19 disease and it’s spread.',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(0, 15, 0, 0)),
                    Row(children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.25),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[400]),
                          ],
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '300',
                              style:
                              TextStyle(fontSize: 11, color: Colors.blue),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Icon(Icons.mail),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              '400',
                              style: TextStyle(fontSize: 11, color: Colors.red),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      IconButton(
                          icon: Icon(Icons.compass_calibration),
                          onPressed: () {}),
                      Text(
                        "89",
                        style: TextStyle(color: Colors.blue, fontSize: 11),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                      Row(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14.25),
                              boxShadow: [
                                BoxShadow(color: Colors.grey[400]),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                Text(
                                  '300',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.blue),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                Icon(Icons.device_hub),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                                Text(
                                  '400',
                                  style: TextStyle(
                                      fontSize: 11, color: Colors.red),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(5),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.fromLTRB(5, 0, 0, 0)),
                          IconButton(
                              icon: Icon(Icons.wb_sunny), onPressed: () {}),
                        ],
                      ),
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
