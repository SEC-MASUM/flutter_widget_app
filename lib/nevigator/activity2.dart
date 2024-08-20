import 'package:flutter/material.dart';
import 'package:flutter_widget_app/nevigator/activity1.dart';

class Activity2 extends StatelessWidget {
  final String appBarTitle;
  const Activity2(this.appBarTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Activity1("From Activity2 to Activity1"),
              ),
            );
          },
          child: const Text("Go to Activity 1"),
        ),
      ),
    );
  }
}
