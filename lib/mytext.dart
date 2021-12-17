import 'package:flutter/material.dart';

class MyTextFieldState extends StatefulWidget {
  const MyTextFieldState({Key? key}) : super(key: key);
  @override
  MyTextFieldStateState createState() => MyTextFieldStateState();
}

class MyTextFieldStateState extends State<MyTextFieldState> {
  String name = '';
  String name_last = '';
  bool validate = false;
  // step-1
  TextEditingController namecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  //Step-1
  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField retrieval')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            TextField(
              //step-2
              controller: mycontroller,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: const OutlineInputBorder(),
                errorText: validate ? "filled cannot be empty" : null,
                errorStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Text(name, textScaleFactor: 3),
            TextField(
              //step-2

              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              decoration: InputDecoration(
                labelText: 'last name',
                hintText: 'Enter your last  name',
                border: const OutlineInputBorder(),
                errorText: validate ? "filled cannot be empty" : null,
                errorStyle: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Text(name_last, textScaleFactor: 3),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            // step-3 retrieving the value.
            name = mycontroller.text;
            name.isEmpty ? validate = true : validate = false;

            name_last = mycontroller.text;
            name_last.isEmpty ? validate = true : validate = false;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
