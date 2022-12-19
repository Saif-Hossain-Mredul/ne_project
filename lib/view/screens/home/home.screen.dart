import 'package:flutter/material.dart';
import 'package:ne_project/services/socket/socket_data.services.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key, required this.ipAddress});

  String ipAddress;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SocketDataStore dataStore = SocketDataStore(url: widget.ipAddress);
  @override
  void initState() {
    dataStore.init();
    super.initState();
  }

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
