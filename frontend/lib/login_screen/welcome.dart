import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Welcome()));
}

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Care App'), centerTitle: true),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Text(
          'Hello, Caregiver!',
          style: TextStyle(fontSize: 24, fontFamily: 'IndieFlower'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
          print('clicked');
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
