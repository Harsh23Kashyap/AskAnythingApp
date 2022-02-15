import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              "Ask Me Anything",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Lucky7(),
          backgroundColor: Colors.black,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );

class Lucky7 extends StatefulWidget {
  @override
  _Lucky7State createState() => _Lucky7State();
}

class _Lucky7State extends State<Lucky7> {
  int a = 1;
  void check() {
    setState(() {
      var rng = Random();
      a = 1 + rng.nextInt(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Text(
            "The answer to you question is",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
              onPressed: () {
                check();
              },
              child: Image(
                image: AssetImage('images/ball$a.png'),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "I hope this helps!!!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
