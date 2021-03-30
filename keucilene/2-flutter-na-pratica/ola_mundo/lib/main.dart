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
    return Container(
      padding: EdgeInsets.all(30),
      child: Center(
        child: Text(
          tittle,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 80.00,
          ),
        ),
      ),
    );
  }
}
