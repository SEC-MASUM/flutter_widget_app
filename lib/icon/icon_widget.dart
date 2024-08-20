import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: const Center(
        child: Icon(
          Icons.camera_alt,
          size: 200,
          color: Colors.grey,
        ),
      ),
    );
  }
}
