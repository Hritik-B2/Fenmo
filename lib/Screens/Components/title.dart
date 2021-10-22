import 'package:flutter/material.dart';

class Tiitle extends StatelessWidget {
  const Tiitle({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      child: Container(
        child: Text(title,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16)),
      ),
    );
  }
}
