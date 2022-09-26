import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.amber,
                width: 100.0,
                // child: Text('one'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: 100.0,
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.green,
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        color: Colors.yellow,
                      ),
                    ),
                  ],
                )),
                // child: Text('two'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.pink,
                // child: Text('three'),
                width: 100.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
