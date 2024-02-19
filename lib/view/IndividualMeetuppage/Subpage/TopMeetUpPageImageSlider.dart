// ignore_for_file: file_names

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class MeetUpPageImageSlider extends StatelessWidget {
  const MeetUpPageImageSlider({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: mediaqury.width * 0.9,
        height: 160,
        child: AnotherCarousel(
          autoplay: true,
          borderRadius: true,
          images: const
           [
            NetworkImage(
              "https://images.pexels.com/photos/4100646/pexels-photo-4100646.jpeg?auto=compress&cs=tinysrgb&w=600",
            ),
            NetworkImage(
                "https://www.bergerpaints.com/blog/wp-content/uploads/2021/07/Home-office-makeover-1280x720.png"),
            NetworkImage(
                "https://images.pexels.com/photos/7205908/pexels-photo-7205908.jpeg?auto=compress&cs=tinysrgb&w=600")
          ],
          dotSize: 4,
          indicatorBgPadding: 8,
          dotIncreasedColor: Colors.black54,
          radius: const Radius.circular(15),
        ),
      ),
    );
  }
}
