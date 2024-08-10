import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        titleSpacing: 20.0,
        centerTitle: false,
        toolbarHeight: 60.0,
        toolbarOpacity: 1.0,
        elevation: 0,
        backgroundColor: Colors.green,
        actions: [
          IconButton(
              onPressed: () {
                MySnackbar("This is Comments", context);
              },
              icon: Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackbar("This is Search", context);
              },
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackbar("This is Settings", context);
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackbar("This is Comments", context);
              },
              icon: Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: () {
          MySnackbar("This is FloatingActionButton", context);
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
