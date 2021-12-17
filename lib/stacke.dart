import 'package:flutter/material.dart';

class stackExample extends StatelessWidget {
  const stackExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
              width: 400,
              height: 200,
              color: Colors.red,
              child: const Text('first widget')),
          Positioned(
            // width: 200,
            // height: 150,
            child: Container(
              color: Colors.blue,
              child: const Text('second widget'),
            ),
          ),
          Positioned(
            right: 200,
            width: 150,
            height: 100,
            child: Container(
              color: Colors.yellow,
              child: const Text('third widget'),
            ),
          )
        ],
      )),
    );
  }
}
