import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
