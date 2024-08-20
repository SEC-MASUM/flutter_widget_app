import 'package:flutter/material.dart';
import 'package:flutter_widget_app/nevigator/activity2.dart';


class Activity1 extends StatelessWidget {
  final String appBarTitle;
  const Activity1(
      this.appBarTitle, {
        super.key,
      });

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
                  builder: (context) => const Activity2("From Activity1 to Activity2"),
                ),
              );
            },
            child: const Text("Go to Activity 2")),
      ),
    );
  }
}
