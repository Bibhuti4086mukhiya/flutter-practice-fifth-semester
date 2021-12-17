import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/shiva.jpg'),
            ),
            const Text(
              'BIBHUTI mukhiya',
              style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico-Regular'),
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontFamily: 'SourceSansPro-LightItalic.ttf',
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              // padding: const EdgeInsets.all(10.0),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.teal[900],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '977-9814804086',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              // padding: const EdgeInsets.all(10),
              child: Padding(
                  padding: const EdgeInsets.all(.0),
                  child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal.shade900,
                      ),
                      title: Text(
                        'bibhuti@gmail.com',
                        style: TextStyle(
                            fontSize: 20, color: Colors.teal.shade900),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
