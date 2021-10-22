import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class BufferPage extends StatelessWidget {
  const BufferPage({Key? key}) : super(key: key);

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
          Text('This Page is under Development', style: TextStyle(fontSize: 18.0),),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: GestureDetector(
              child: Icon(Icons.arrow_back, size: 50.0, color: Colors.red,),
              onTap: (){Navigator.pop(context);}
            ),
          )
        ],
      ),
    );
  }
}
