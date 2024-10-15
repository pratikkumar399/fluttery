import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Layouts'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: double.infinity,
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Header',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.star, size: 50, color: Colors.red),
                  Icon(Icons.favorite, size: 50, color: Colors.pink),
                  Icon(Icons.settings, size: 50, color: Colors.green),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Press Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
