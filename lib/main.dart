import 'package:flutter/material.dart';
import 'package:ne_project/view/screens/portInput/portInput.screen.dart';

import 'view/screens/home/home.screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: (_) {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.focusedChild?.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Project cam',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PortInput(),
      ),
    );
  }
}
