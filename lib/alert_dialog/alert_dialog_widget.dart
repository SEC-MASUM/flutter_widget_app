import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  MySnackbar(message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  MyAlertDialog(message, context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: const Text("Alert !"),
              content: Text(message),
              actions: [
                TextButton(onPressed: (){
                  MySnackbar("Delete Success", context);
                  Navigator.of(context).pop();
                }, child: const Text("Yes")),
                TextButton(onPressed: (){ Navigator.of(context).pop();}, child: const Text("No")),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Click me"),
          onPressed: () {
            MyAlertDialog("Do you want to delete", context);
          },
        ),
      ),
    );
  }
}
