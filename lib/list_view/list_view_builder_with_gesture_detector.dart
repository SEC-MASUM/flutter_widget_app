import 'package:flutter/material.dart';

class ListViewBuilderWithGestureDetector extends StatefulWidget {
   const ListViewBuilderWithGestureDetector({super.key});

  @override
  State<ListViewBuilderWithGestureDetector> createState() => _ListViewBuilderWithGestureDetectorState();
}

class _ListViewBuilderWithGestureDetectorState extends State<ListViewBuilderWithGestureDetector> {
  var MyItems = [
    {
      "img":
      "https://img.freepik.com/free-photo/mesmerizing-view-silhouette-tree-savanna-plains-sunset_181624-18108.jpg",
      "title": "Image 1"
    },
    {
      "img":
      "https://img.freepik.com/free-photo/mesmerizing-view-silhouette-tree-savanna-plains-sunset_181624-18108.jpg",
      "title": "Image 2"
    },
    {
      "img":
      "https://img.freepik.com/free-photo/mesmerizing-view-silhouette-tree-savanna-plains-sunset_181624-18108.jpg",
      "title": "Image 3"
    },
    {
      "img":
      "https://img.freepik.com/free-photo/mesmerizing-view-silhouette-tree-savanna-plains-sunset_181624-18108.jpg",
      "title": "Image 4"
    },
    {
      "img":
      "https://img.freepik.com/free-photo/mesmerizing-view-silhouette-tree-savanna-plains-sunset_181624-18108.jpg",
      "title": "Image 5"
    },
    {
      "img":
      "https://img.freepik.com/free-photo/mesmerizing-view-silhouette-tree-savanna-plains-sunset_181624-18108.jpg",
      "title": "Image 6"
    },
  ];

  mySnackBar(context, message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {mySnackBar(context, MyItems[index]["title"]);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              // height: 250.0,
              child: Image.network(
                MyItems[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
