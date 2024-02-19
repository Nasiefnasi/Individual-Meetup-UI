// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TopTrendingMeetupCard extends StatelessWidget {
  const TopTrendingMeetupCard({
    super.key,
    required this.mediaqury,
    required this.images,
  });

  final Size mediaqury;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaqury.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        images[index],
                      ),
                      fit: BoxFit.cover),
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(15)),
              width: mediaqury.width * .55,
              height: mediaqury.height * .28,
              // color: Colors.amberAccent,
              child: Stack(children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                      width: 110,
                      child: Image.asset("image/image top leyar-01.png")),
                ),
                Align(
                  alignment: const Alignment(1.1, 1),
                  child: SizedBox(
                      width: 90,
                      height: 90,
                      child: "0${1 + index}".text.size(60).extraBlack.make()),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
