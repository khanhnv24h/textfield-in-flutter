import 'package:flutter/material.dart';
import 'auth/loginPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo Text Field',

      home: new LoginPage(),
    );
  }
}

