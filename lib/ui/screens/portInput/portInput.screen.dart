import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PortInput extends StatelessWidget {
  const PortInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Text('Enter the ip address of server'),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: const [
              TextField(
                keyboardType: TextInputType.number,
              ),
              Text('.'),
              TextField(
                keyboardType: TextInputType.number,
              ),
              Text('.'),
              TextField(
                keyboardType: TextInputType.number,
              ),
              Text('.'),
              TextField(
                keyboardType: TextInputType.number,
              ),
            ],
          )
        ],
      ),
    );
  }
}
