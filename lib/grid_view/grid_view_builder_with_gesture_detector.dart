import 'package:flutter/material.dart';

class GridViewBuilderWithGestureDetector extends StatefulWidget {
  const GridViewBuilderWithGestureDetector({super.key});

  @override
  State<GridViewBuilderWithGestureDetector> createState() => _GridViewBuilderWithGestureDetectorState();
}

class _GridViewBuilderWithGestureDetectorState extends State<GridViewBuilderWithGestureDetector> {
  var myItems = [
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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            childAspectRatio: 1.6
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              mySnackBar(context, myItems[index]["title"]);
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: double.infinity,
              // height: 250.0,
              child: Image.network(
                myItems[index]["img"]!,
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}

