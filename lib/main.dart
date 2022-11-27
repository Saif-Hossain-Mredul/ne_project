import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project cam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 13,
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
          children:getContainers(),
        ),
      ),
    );
  }
}

List<Widget> getContainers() {
  List<Widget> containerList = [];

  for (int i = 0; i < 169; i++) {
    containerList.add(
      Container(
        color: Colors.black,
      ),
    );
  }

  return containerList;
}
