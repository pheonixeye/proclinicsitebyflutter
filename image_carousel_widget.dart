import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:proclinic_flutter_website_surge/image_carosel_wigets_platform.dart';

class CustomImageCarousel extends StatefulWidget {
  CarouselController carouselController = CarouselController();
  CustomImageCarousel({this.carouselController});
  @override
  _CustomImageCarouselState createState() => _CustomImageCarouselState();
}

class _CustomImageCarouselState extends State<CustomImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width * 0.9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  offset: Offset(0.0, 0.0),
                  blurRadius: 4.0,
                  spreadRadius: 7.0),
            ]),
        child: CarouselSlider(
          options: CarouselOptions(
              autoPlayInterval: const Duration(seconds: 6),
              autoPlayAnimationDuration: const Duration(seconds: 2),
              autoPlayCurve: Curves.easeInOutCirc,
              autoPlay: true,
              enlargeCenterPage: true),
          items: MediaQuery.of(context).devicePixelRatio <= 3.5
              ? mobileformatcaroselitems
              : assetimgs,
          carouselController: widget.carouselController,
        ),
      ),
    );
  }
}

class CustomCarouselControls extends StatefulWidget {
  CarouselController carouselController = CarouselController();
  CustomCarouselControls({this.carouselController});
  @override
  _CustomCarouselControlsState createState() => _CustomCarouselControlsState();
}

class _CustomCarouselControlsState extends State<CustomCarouselControls> {
  Color randomColor =
      Colors.primaries[Random().nextInt(Colors.primaries.length)];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: CircleAvatar(
            backgroundColor: randomColor,
            child: IconButton(
              icon: Icon(Icons.arrow_left),
              onPressed: () {
                widget.carouselController.previousPage();
              },
            ),
          ),
        ),
        SizedBox(
          width: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: CircleAvatar(
            backgroundColor: randomColor,
            child: IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                widget.carouselController.nextPage();
              },
            ),
          ),
        ),
      ],
    );
  }
}
