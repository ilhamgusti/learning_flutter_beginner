import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_flutter_beginner/main.dart';
import 'package:learning_flutter_beginner/pages/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Second Page."),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(),
                      ));
                },
                icon: Icon(Icons.chevron_right),
                label: Text("Third Page")),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                },
                icon: Icon(CupertinoIcons.home),
                label: Text("Home Page")),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.chevron_left),
              label: Text("Previous Page"),
            )
          ],
        ),
      ),
    );
  }
}
