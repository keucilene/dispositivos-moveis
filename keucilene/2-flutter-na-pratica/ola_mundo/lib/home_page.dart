import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text('App ADS'),
      ),
      body: Center(
        child: GestureDetector(
          child: Text(
            'Clique: $counter',
            style: TextStyle(
              fontSize: 50,
            ),
          ),
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
