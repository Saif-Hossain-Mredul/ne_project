import 'dart:async';

import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketDataStore {
  late IO.Socket _socketio;
  late StreamController _streamController;

  Stream get dataStream => _streamController.stream;

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

    _socketio.on('new-data-from-server', (data) {
      _streamController.add(data);
    });
  }

  void dispose() {
    _streamController.close();
    _socketio.dispose();
  }
}
