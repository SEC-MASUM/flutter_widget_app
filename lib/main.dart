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

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    ButtonStyle textButtonStyle = TextButton.styleFrom(
      foregroundColor: Colors.blue
    );

    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );

    ButtonStyle outlineButtonStyle = OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.pink),
      foregroundColor: Colors.black
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextButton(onPressed: (){MySnackbar("I am Text Button", context);}, child: Text("Text Button"), style: textButtonStyle,),
          ElevatedButton(onPressed: (){MySnackbar("I am Elevated Button", context);}, child: Text("Elevated Button"), style: elevatedButtonStyle,),
          OutlinedButton(onPressed: (){MySnackbar("I am Outline Button", context);}, child: Text("Outline Button"), style: outlineButtonStyle,),
        ],
      )
    );
  }
}
