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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          child: Text('Clique: $counter'),
          onTap: () {
            setState(() {
              counter++;
              print(counter);
            });
          },
        ),
      ),
    );
  }
}
