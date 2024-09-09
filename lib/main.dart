import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        color: Colors.pink,
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
