import 'package:flutter/material.dart';
import 'package:flutter_widget_app/nevigator/activity1.dart';
import 'package:flutter_widget_app/nevigator/activity2.dart';

class SimpleNavigationWithDataPass extends StatelessWidget {
  const SimpleNavigationWithDataPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Activity1("From Home to Activity 1"),
                  ),
                );
              },
              child: const Text("Go Activity 1"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Activity2("From Home to Activity 2"),
                  ),
                );
              },
              child: const Text("Go Activity 2"),
            ),
          ],
        ),
      ),
    );
  }
}
