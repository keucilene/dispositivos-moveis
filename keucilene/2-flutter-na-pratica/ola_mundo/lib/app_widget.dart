import 'package:flutter/material.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String tittle;
  const AppWidget({Key key, this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
