import 'package:flutter/material.dart';
import 'package:learning_flutter_beginner/pages/first_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Demo",
      home: FirstPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Content on Center of Screen"),
            const Text("this is second text. using column"),
            ElevatedButton(onPressed: () {}, child: Text("Button"))
          ],
        ),
      ),
    );
  }
}
