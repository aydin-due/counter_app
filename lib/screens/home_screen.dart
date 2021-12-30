import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: const <Widget>[Text('Clicks counter'), Text('0')],
        ),
      ),
    );
  }
}
