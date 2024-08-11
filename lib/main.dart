import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
      ),
      body: Container(
        width: 350,
        height: 350,
        alignment: Alignment.topLeft,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.blue, width: 6)
        ),
        child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png", width: 200, height: 200,),
      ),
    );
  }
}
