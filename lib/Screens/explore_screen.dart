import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Thanks for Downloading', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),),
          Container(
            child: SpinKitPumpingHeart(
              color: Colors.red,
              size: 100.0,
            ),
          ),
          Text('This Page is under Development, Coming Soon...')
        ],
      ),
    );
  }
}
