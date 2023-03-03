import 'package:flutter/material.dart';
import 'package:ne_project/view/screens/portInput/portInput.screen.dart';
import 'package:window_manager/window_manager.dart';

import 'view/screens/home/home.screen.dart';

void main() async {

  // WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();

  // WindowOptions windowOptions = const WindowOptions(
  //   title: "NE Project",
  //   minimumSize: Size(800, 600),
  //   maximumSize: Size(800, 600),
  //   size: Size(800, 600),
  //   center: true,
  //   fullScreen: false,
  //   backgroundColor: Colors.transparent,
  //   skipTaskbar: false,
  //   titleBarStyle: TitleBarStyle.normal,
  // );
  
  // windowManager.waitUntilReadyToShow(windowOptions, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });

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
