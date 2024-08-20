import 'package:flutter/material.dart';

class StateLifecycle extends StatefulWidget {
  const StateLifecycle({super.key});

  /// Number 01
  @override
  State<StateLifecycle> createState() => _StateLifecycleState();
}

class _StateLifecycleState extends State<StateLifecycle> {
  int countNumber = 0;

  /// Number 02
  @override
  void initState() {
    print("initState");
    super.initState();
  }


  /// Number 03
  @override
  void didChangeDependencies() {
    print("didChangeDependencies");
    super.didChangeDependencies();
  }


  /// Number 04
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          'Count: $countNumber',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {


          /// Number 05
          setState(() {
            print("setState");
            countNumber = countNumber + 1;
          });
        },
      ),
    );
  }
}
