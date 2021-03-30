import 'package:flutter/material.dart';

void main() {
  runApp(AppWidget(
    tittle: 'Aula ADS Tittle',
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
          'Aula ADS Mobile',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.white,
            fontSize: 40.00,
          ),
        ),
      ),
    );
  }
}
