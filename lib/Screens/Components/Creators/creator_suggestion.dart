import 'package:flutter/material.dart';

import '../../../constants.dart';

class CreatorsSuggestion extends StatelessWidget {
  const CreatorsSuggestion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvtar(name: 'sundar'),
        SizedBox(width: 5.0),

        CircleAvtar(name: 'elon'),
        SizedBox(width: 5.0),

        CircleAvtar(name: 'ratan'),
        SizedBox(width: 5.0),

        CircleAvtar(name: 'aman'),
        SizedBox(width: 5.0),

        CircleAvtar(name: 'kohli'),
        SizedBox(width: 5.0),

        CircleAvtar(name: 'maheshwari'),
        SizedBox(width: 5.0),
        
        CircleAvtar(name: 'ankur')
      ],
    );
  }
}

class CircleAvtar extends StatelessWidget {
  const CircleAvtar({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/first');
      },
      child: CircleAvatar(
        backgroundImage: AssetImage('images/$name.jpg'),
        radius: kRadiusOfCircle,
      ),
    );
  }
}
