import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'Components/categoriesSection.dart';
import 'Components/Creators/creatorsSection.dart';
import 'Components/sliding_images.dart';
import 'Components/title.dart';
import 'Components/recentCard.dart';

const TWO_PI = 3.14 * 2;

class HomePageBody extends StatelessWidget {
  int activeIndex = 0;
  final urImage = [
    'images/business.png',
    'images/entrepreneur.jpg',
    'images/videoEditing.png',
    'images/teamwork.jpg'
  ];
  final size = 200.0;

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urImage.length,
        effect: ExpandingDotsEffect(),
      );
  @override
  Widget build(BuildContext context) {
    double percent = 0.62;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SlidingImages(urImage: urImage),
            Tiitle(title: 'start where you left'),
            RecentCard(percent: percent),
            Tiitle(title: 'explore by category'),
            CategoriesSection(),
            SizedBox(height: 10, width: 40),
            Tiitle(title: 'trending creators'),
            CreatorsSection()
          ],
        ),
      ),
    );
  }
}

