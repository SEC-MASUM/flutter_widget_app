import 'package:flutter/material.dart';

class RowContainerWidget extends StatelessWidget {
  const RowContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Inventory App"),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(width: 100,height: 100, decoration: BoxDecoration(color: Colors.white), child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png")),
            Container(width: 100,height: 100, decoration: BoxDecoration(color: Colors.white), child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png")),
            Container(width: 100,height: 100, decoration: BoxDecoration(color: Colors.white), child: Image.network("https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png")),
          ],
        )
    );
  }
}
