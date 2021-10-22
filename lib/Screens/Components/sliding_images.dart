import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlidingImages extends StatelessWidget {

  const SlidingImages({
    Key? key,
    required this.urImage,
  }) : super(key: key);

  final List<String> urImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          enableInfiniteScroll: true,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          viewportFraction: 1,
        ),
        itemCount: urImage.length,
        itemBuilder: (context, index, realIndex) {
          return buildImage(urImage[index], index);
        },
      ),
    );
  }
}



Widget buildImage(String urImage, int index) => Container(
  margin: EdgeInsets.symmetric(horizontal: 12),
  width: double.infinity,
  color: Colors.grey,
  child: Image(image: AssetImage(urImage), fit: BoxFit.fill,),
);
