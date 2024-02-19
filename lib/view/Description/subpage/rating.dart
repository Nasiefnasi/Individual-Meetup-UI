// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class Ratingstarbox extends StatelessWidget {
  const Ratingstarbox({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Row(children: [
        const Icon(
          Icons.bookmark_border,
          color: Colors.blue,
        ),
        "1034".text.gray500.make(),
        15.widthBox,
        const Icon(
          Icons.favorite_border,
          color: Colors.blue,
        ),
        "1034".text.gray500.make(),
        15.widthBox,
        Container(
          child: Center(
            child: RatingBar.builder(
              unratedColor: Colors.white,
              initialRating: 3,
              itemSize: 15,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star_rate_rounded,
                color: Color.fromARGB(255, 7, 226, 255),
              ),
              onRatingUpdate: (rating) {},
            ),
          ),
          width: mediaqury.width * .33,
          height: mediaqury.height * .03,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.black12,
          ),
        ),
        10.widthBox,
        "3.2".text.blue500.make(),
      ]),
    );
  }
}