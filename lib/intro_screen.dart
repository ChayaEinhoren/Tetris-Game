import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tetris_game/board.dart';

class introScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Tetris World',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = LinearGradient(
                      colors: <Color>[Colors.blue, Colors.purple],
                    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GameBoard(),
                    ),
                  );
                },
                child: Text('Start'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
