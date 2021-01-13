import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CardLayout(),
  ));
}

class CardLayout extends StatelessWidget {                  // Alert Dialog widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
          ),
          child: Column(
            children: <Widget>[
              RaisedButton(
                  onPressed: (){
                    showDialog(context: context,
                        builder: (contextt) {
                          return AlertDialog(
                            title: Text('Dialog Box'),
                            content: Text('Hello'),
                            actions: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  Navigator.of(contextt).pop();
                                },
                                child: Text("Okay Close it"),
                              ),
                            ],
                          );
                        }
                    );
                  },
                  child: Text('Open Alert Dialog')
              ),
            ],
          ),
        )
    );
  }

  void showDdialog(){

  }

}
