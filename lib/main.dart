import 'package:flutter/material.dart';
import 'package:flutter_widget_app/tab_bar/fragment/alarm_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/balance_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/contact_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/email_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/home_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/person_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/search_fragment.dart';
import 'package:flutter_widget_app/tab_bar/fragment/setting_fragment.dart';

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
