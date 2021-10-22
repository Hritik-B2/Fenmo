
import 'package:fenmo/Screens/buffer_page.dart';
import 'package:flutter/material.dart';
import 'Screens/Summary.dart';
import 'body.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/first': (context) => const BufferPage(),
        '/second': (context) => const Summary(),
      },

    );
  }
}

