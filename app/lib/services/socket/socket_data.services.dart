import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:ne_project/models/sensor_data.model.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketDataStore {
  late IO.Socket _socketio;
  late StreamController _streamController;

  Stream get dataStream => _streamController.stream;

  // static final SocketDataStore _instance = SocketDataStore._internal();

  // factory SocketDataStore() {
  //   return _instance;
  // }

  // SocketDataStore._internal({required String url}) {

  // }

  SocketDataStore({required String url}) {
    _streamController = StreamController();

    _socketio = IO.io(
      ('ws://$url'),
      <String, dynamic>{
        "transports": ["websocket"],
        "autoConnect": true,
      },
    );
  }

  void init() {
    _socketio.connect();

    _socketio.onConnect((_) {
      print('connected');
    });

    _socketio.emit(
        'new-data-to-server',
        'test',
      );

    _socketio.on('new-data-from-server', (data) {
      // print(data);
      _streamController.add(SensorData.fromJson(jsonDecode(data)));
    });
  }

  void dispose() {
    _streamController.close();
    _socketio.dispose();
  }
}
