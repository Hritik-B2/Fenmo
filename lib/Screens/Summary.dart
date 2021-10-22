import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Atomic Habits'),
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Text('Atomic Habits Summary will the uploaded soon', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
