import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Body extends StatelessWidget {
  int activeIndex =0;
  final urImage = [
    'images/elon.jpg',
    'images/scene.jpg',
    'images/lake.jpg',
  ];
  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: urImage.length,
    effect: ExpandingDotsEffect(),
  );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 1,

              ),
              itemCount: urImage.length,
              itemBuilder: (context, index, realIndex){
                final urlImage = urImage[index];
                return buildImage(urImage[index], index);
              },
            ),
            const SizedBox(height: 32),
            buildIndicator(),
            Container(
              child: Text(
                'start where you left',
                textAlign: TextAlign.left,
              ),
            ),
            ListTile(
              leading: Image(
                image: AssetImage('images/steps.jpg'),
                height: 200,
              ),
              title: Text('Book Summary - '),
              subtitle: Text('The Atomic Habits'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                child: Text('explore by category'),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
              width: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 50,
                    width: 110,
                    child: Center(
                        child: Text(
                      'financial world',
                      textAlign: TextAlign.center,
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Container(
                child: Text('trending creators'),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/aman.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/maheshwari.jpg'),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/ankur.jpg'),
                    )
                  ],
                ))
          ],
        ),
      ),


    );

  }
}



Widget buildImage(String urImage, int index) =>Container(
  margin: EdgeInsets.symmetric(horizontal: 12),
  width: double.infinity,

  color: Colors.grey,
  child: Image(image: AssetImage(urImage)),
);

// class Categories_card extends StatelessWidget {
//   const Categories_card({
//     Key key,
//     this.title,
//     this.country,
//     this.price,
//     this.press,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 8),
//       decoration: BoxDecoration(
//         color: Colors.red.shade100,
//         borderRadius: BorderRadius.circular(15),
//         boxShadow: [
//           BoxShadow(
//             offset: Offset(0, 10),
//             blurRadius: 50,
//             color: Colors.red.shade100,
//           ),
//         ],
//       ),
//       height: 50,
//       width: 110,
//       child: Center(child: Text('financial world', textAlign: TextAlign.center,)),
//     );
//   }
// }
