import 'package:flutter/material.dart';

class CircularLinearProgressIndicator extends StatelessWidget {
  const CircularLinearProgressIndicator({super.key});

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
