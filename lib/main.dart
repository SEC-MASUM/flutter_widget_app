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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Colors.black,
              strokeWidth: 10,
              backgroundColor: Colors.grey,
              strokeCap: StrokeCap.round,
            ),
            SizedBox(
              height: 50,
            ),
            LinearProgressIndicator(
              minHeight: 10,
              color: Colors.deepPurple,
              backgroundColor: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}
