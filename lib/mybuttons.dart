import 'package:flutter/material.dart';

class myButton extends StatefulWidget {
  const myButton({Key? key}) : super(key: key);

  @override
  myButtonState createState() => myButtonState();
}

class myButtonState extends State<myButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "button ex",
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextButton(
              style: TextButton.styleFrom(
                side: BorderSide(color: Colors.blue, width: 5),
              ),
              onPressed: () {},
              child: const Text("u")),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text("elavated")),
          const SizedBox(height: 20),
          OutlinedButton(onPressed: () {}, child: const Text("outline")),
          OutlinedButton(
              onPressed: () {},
              child: const Icon(
                Icons.wifi,
                size: 40,
              ))
        ],
      ),
    );
  }
}
