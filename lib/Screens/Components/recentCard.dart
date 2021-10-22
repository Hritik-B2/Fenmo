import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({
    Key? key,
    required this.percent,
  }) : super(key: key);

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, '/second');
        },
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.contain,
              image: AssetImage('images/steps.jpg'),
            ),
          ),
          title: Text(
            'Book Summary - ',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'The Atomic Habits',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600),
          ),
          trailing: CircularProgressBar(percent: percent),
        ),
      ),
    );
  }
}


class CircularProgressBar extends StatelessWidget {
  const CircularProgressBar({
    Key? key,
    required this.percent,
  }) : super(key: key);

  final double percent;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircularPercentIndicator(
        radius: 55.0,
        lineWidth: 12.0,
        backgroundColor: CupertinoColors.white,
        progressColor: Colors.indigo.shade300,
        percent: percent,
        animation: true,
        center: Text(
          '${(percent * 100).toInt()}%',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

