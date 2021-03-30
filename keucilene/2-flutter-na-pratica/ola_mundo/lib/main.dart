import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(
    tittle: 'Aula ADS',
  ));
}

class AppWidget extends StatelessWidget {
  final String tittle;
  const AppWidget({Key key, this.tittle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.green),
      home: Container(
        child: Center(
          child: Text('Material App'),
        ),
      ),
    );
  }
}
