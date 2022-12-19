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
              const Text(
                'Enter the ip address of server',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 75,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '3000',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Text('.', style: TextStyle(fontSize: 20)),
                  SizedBox(
                    width: 75,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '3000',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Text('.', style: TextStyle(fontSize: 20)),
                  SizedBox(
                    width: 75,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '3000',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const Text('.', style: TextStyle(fontSize: 20)),
                  SizedBox(
                    width: 75,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '3000',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.lightBlueAccent,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text('Enter port', style: TextStyle(fontSize: 20)),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 150,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '3000',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2,
                        color: Colors.lightBlueAccent,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.lightBlueAccent,
                    minimumSize: Size(150, 40)),
                onPressed: () {
                  print('Pressed');
                },
                child: const Text('Go!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
