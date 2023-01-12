import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ne_project/models/sensor_data.model.dart';
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
        child: StreamBuilder(
            stream: dataStore.dataStream,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState != ConnectionState.active) {
                return const SizedBox();
              }

              final SensorData sensorData = snapshot.data;
              return GridView.count(
                crossAxisCount: 13,
                crossAxisSpacing: 1.0,
                mainAxisSpacing: 1.0,
                children: getContainers(sensorData: sensorData),
              );
            }),
      ),
    );
  }
}

List<Widget> getContainers({required SensorData sensorData}) {
  List<Widget> containerList = [];

  for (int i = 0; i < 78; i++) {
    containerList.add(
      Container(
        color: Colors.black.withOpacity((sensorData.data[i] / 5)),
        // child: Text('$i', style: TextStyle(color: Colors.white),),
      ),
    );
  }

  return containerList;
}
