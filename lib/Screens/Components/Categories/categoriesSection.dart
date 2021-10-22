import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'category.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [
              Categories(
                  title: 'financial world',
                  leftcolor: Colors.red,
                  rightcolor: Colors.red.shade100),
              Categories(
                  title: 'career growth',
                  leftcolor: Colors.green,
                  rightcolor: Colors.green.shade100),
              Categories(
                  title: 'lifestyle',
                  leftcolor: Colors.deepOrange,
                  rightcolor: Colors.deepOrange.shade100),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Categories(
                  title: 'english speaking',
                  leftcolor: Colors.blue,
                  rightcolor: Colors.blue.shade100),
              Categories(
                  title: 'motivational',
                  leftcolor: Colors.orange,
                  rightcolor: Colors.orange.shade100),
              Categories(
                  title: 'travelling',
                  leftcolor: Colors.purple,
                  rightcolor: Colors.purple.shade100),
            ],
          ),
        ],
      ),
    );
  }
}
