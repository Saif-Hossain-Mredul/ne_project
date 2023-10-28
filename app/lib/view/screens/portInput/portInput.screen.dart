import 'package:flutter/material.dart';
import 'package:ne_project/view/screens/home/home.screen.dart';

class PortInput extends StatelessWidget {
  PortInput({super.key});
  TextEditingController ipEditingController1 = TextEditingController();
  TextEditingController ipEditingController2 = TextEditingController();
  TextEditingController ipEditingController3 = TextEditingController();
  TextEditingController ipEditingController4 = TextEditingController();
  TextEditingController portEditingController = TextEditingController();

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
                      controller: ipEditingController1,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '192',
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
                      controller: ipEditingController2,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '168',
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
                      controller: ipEditingController3,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '0',
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
                      controller: ipEditingController4,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: '103',
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
                  controller: portEditingController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: '8080',
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
                  final String ipAddress =
                      '${ipEditingController1.text}.${ipEditingController2.text}.${ipEditingController3.text}.${ipEditingController4.text}:${portEditingController.text}';

                  print(ipAddress);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: ((context) => HomePage(
                            ipAddress: ipAddress,
                          )),
                    ),
                  );
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
