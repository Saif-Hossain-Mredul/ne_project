import 'package:flutter/material.dart';

class PortInput extends StatelessWidget {
  const PortInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Enter the ip address of server', style: TextStyle(fontSize: 20),),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SizedBox(
                    width: 75,
                    child: TextField(
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text('.'),
                   SizedBox(
                    width: 75,
                    child: TextField(
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text('.'),
                  SizedBox(
                    width: 75,
                    child: TextField(
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Text('.'),
                   SizedBox(
                    width: 75,
                    child: TextField(
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Enter port', style: TextStyle(fontSize: 20)),
              const SizedBox(
                width: 150,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: '3000'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
