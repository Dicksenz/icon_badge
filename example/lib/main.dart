import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestApp(),
    );
  }
}

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test App'),
        actions: <Widget>[
          IconBadge(
            icon: Icon(Icons.notifications_none),
            itemCount: 0,
            badgeColor: Colors.red,
            itemColor: Colors.white,
            hideZero: true,
            onTap: () {
              print('test');
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Icon badge test'),
      ),
    );
  }
}
