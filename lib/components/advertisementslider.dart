import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AdvertisementSlider extends StatelessWidget {
  const AdvertisementSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: 134.0,
          enlargeCenterPage: true,
          aspectRatio: 16 / 9,
          viewportFraction: 1),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'text $i',
                  style: const TextStyle(fontSize: 16.0),
                ));
          },
        );
      }).toList(),
    );
  }
}
