import 'package:flutter/material.dart';

class imageStack extends StatelessWidget {
  const imageStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('image/'),
            const Positioned(
              right: 300,
              bottom: 200,
              child: CircleAvatar(
                radius: 220,
                backgroundImage: AssetImage('images/shiva.jpg'),
              ),
            ),
            const Positioned(
              left: 50,
              child: Text(
                "softwaria ",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
