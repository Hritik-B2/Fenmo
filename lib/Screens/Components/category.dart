import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
    required this.title,
    required this.leftcolor,
    required this.rightcolor,
  }) : super(key: key);
  final Color leftcolor, rightcolor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 13,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                color: leftcolor),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/first');
            },
            child: Container(
              margin: EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: rightcolor,
              ),
              height: 60,
              width: 130,
              child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.left,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

