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
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
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
              icon: const Icon(Icons.comment)),
          IconButton(
              onPressed: () {
                MySnackbar("This is Search", context);
              },
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {
                MySnackbar("This is Settings", context);
              },
              icon: const Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                MySnackbar("This is Comments", context);
              },
              icon: const Icon(Icons.email)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: () {
          MySnackbar("This is FloatingActionButton", context);
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackbar("I am Home bottom menu", context);
          }
          if (index == 1) {
            MySnackbar("I am Contact bottom menu", context);
          }
          if (index == 2) {
            MySnackbar("I am Profile bottom menu", context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "Md. Masum Billah",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "masum.jess42@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                    "https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png"),
                onDetailsPressed: () {
                  MySnackbar("This is DrawerHeader", context);
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                MySnackbar("I am home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text("Contact"),
              onTap: () {
                MySnackbar("I am contact", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                MySnackbar("I am email", context);
              },
            ),
          ],
        ),
      ),
      //! endDrawer not working
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "Md. Masum Billah",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "masum.jess42@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                    "https://cdn.iconscout.com/icon/free/png-512/free-flutter-2038877-1720090.png"),
                onDetailsPressed: () {
                  MySnackbar("This is DrawerHeader", context);
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                MySnackbar("I am home", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text("Contact"),
              onTap: () {
                MySnackbar("I am contact", context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text("Email"),
              onTap: () {
                MySnackbar("I am email", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
