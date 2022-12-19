import 'package:flutter/material.dart';
import 'package:ne_project/view/screens/portInput/portInput.screen.dart';

import 'view/screens/home/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project cam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PortInput(),
    );
  }
}
