import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'dart:developer';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Socket socket;
  String status = "Disconnected";
  @override
  void initState() {
    socket = io(
      'http://192.168.23.65:3000',
      OptionBuilder().disableAutoConnect().setTransports(['websocket']).build(),
    );
    socket.onConnect((_) {
      print('connected');
      setState(() => status = "Connected");
    });

    socket.onError((data) => log(data.toString()));

    socket.onDisconnect((_) {
      print('disconnect');
      setState(() => status = "Disconnected");
    });

    socket.onConnectError((data) => log(data.toString()));

    socket.on('message', (data) => log(data.toString()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(status),
          ElevatedButton(
            onPressed: socket.connect,
            child: const Text("Connect"),
          ),
          ElevatedButton(
            onPressed: socket.disconnect,
            child: const Text("Disconnect"),
          ),
          ElevatedButton(
            onPressed: () {
              socket.emit(
                'message',
                {
                  "id": "123",
                  "lat": "30",
                  "lon": "30.5",
                  "timestamp": "100000",
                  "hdop": "1",
                  "altitude": "0",
                  "speed": "10"
                },
              );
            },
            child: const Text("Send"),
          ),
        ],
      )),
    );
  }
}
