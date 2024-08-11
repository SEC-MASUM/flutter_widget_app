import 'package:flutter/material.dart';

class BodyContainerWidget extends StatelessWidget {
  const BodyContainerWidget({super.key});

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
