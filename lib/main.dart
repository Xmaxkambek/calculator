import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  num javob = 0;
  num r1 = 0;
  num r2 = 0;
  num r3 = 0;
  TextEditingController controller1 = TextEditingController(text: '');
  TextEditingController controller2 = TextEditingController(text: '');
  TextEditingController controller3 = TextEditingController(text: '');
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Color.fromARGB(255, 183, 183, 183),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: controller1,
                        decoration: InputDecoration(
                          hintText: 'R1',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Color.fromARGB(255, 183, 183, 183),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: controller2,
                        decoration: InputDecoration(
                            hintText: 'R2', border: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 100,
                      height: 50,
                      color: Color.fromARGB(255, 183, 183, 183),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: controller3,
                        decoration: InputDecoration(
                          hintText: 'R3',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Color.fromARGB(255, 183, 183, 183),
                child: Text(
                  '$javob',
                  style: TextStyle(fontSize: 25),
                ),
              ),
             
              TextButton(
                onPressed: () {
                  setState(() {
                    r2 = int.parse(controller1.text);
                    r1 = int.parse(controller2.text);
                    r3 = int.parse(controller2.text);
                    javob = (r2 * r1 * r3)/(r2 + r1 + r3);
                    print(javob);
                    // javob = javob + 1;
                  });
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.center,
                  child: Text(
                    "RUN",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
             
            
              
             
            ],
          ),
        ),
      ),
    );
  }
}
