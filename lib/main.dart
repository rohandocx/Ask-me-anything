import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int BallNumber = 0;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask me Anything'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            child: Image.asset('images/ball$BallNumber.png'),
            onPressed: () {
              setState((){
                BallNumber = Random().nextInt(5) + 1;
              });
            },
          ),
        ],
      ),
    ));
  }
}
