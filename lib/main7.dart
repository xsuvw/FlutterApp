import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {                 // Email Validation
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _username, _email, _password = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Validation"),
      ),
      body: HomePageBody(),
    );
  }

  Widget HomePageBody() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              NameInput(),
              SizedBox(
                height: 16,
              ),
              EmailInput(),
              SizedBox(
                height: 16,
              ),
              PasswordInput(),
              SizedBox(
                height: 16,
              ),
              SubmitButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget NameInput() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Username",
        hintText: "e.g Morgan",
      ),

      validator: (name) {
        Pattern pattern = r'^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(name))
          return 'Invalid username';
        else
          return null;
      },
      onSaved: (name) => _username = name,
    );
  }

  Widget EmailInput() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "e.g abc@gmail.com",
      ),

      validator: (email) =>
      EmailValidator.validate(email) ? null : "Invalid email address",
      onSaved: (email) => _email = email,
    );
  }

  Widget PasswordInput() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        suffixIcon: Icon(Icons.lock),
      ),
      validator: (password) {
        Pattern pattern = r'^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z]{6,}$';
        RegExp regex = new RegExp(pattern);
        if (!regex.hasMatch(password))
          return 'Invalid password';
        else
          return null;
      },
      onSaved: (password) => _password = password,
    );
  }

  RaisedButton SubmitButton() {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
          toastMessage(
              "Username: $_username\nEmail: $_email\nPassword: $_password");
        }
      },
      child: Text(
        "Submit",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

void toastMessage(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM_RIGHT,
      timeInSecForIosWeb: 1,
      fontSize: 16.0);
}

