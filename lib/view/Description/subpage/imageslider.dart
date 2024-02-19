// ignore_for_file: sort_child_properties_last

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'package:velocity_x/velocity_x.dart';

class Descriptionimagesilder extends StatelessWidget {
  const Descriptionimagesilder({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: mediaqury.height * .4,
      child: Stack(children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.file_download_outlined,
                      size: 25,
                      color: Colors.grey.shade600,
                    ),
                    Icon(
                      Icons.bookmark_border,
                      size: 25,
                      color: Colors.grey.shade600,
                    ),
                    Icon(
                      Icons.favorite_border,
                      size: 25,
                      color: Colors.grey.shade600,
                    ),
                    Icon(
                      Icons.check_box_outline_blank_rounded,
                      size: 25,
                      color: Colors.grey.shade600,
                    ),
                    Icon(
                      Icons.star_border,
                      size: 25,
                      color: Colors.grey.shade600,
                    ),
                    IconButton(
                      onPressed: () {
                        Share.share("Hello",subject: "Be Happy");
                      },
                      icon: Icon(
                        Icons.share_outlined,
                        size: 25,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    // InkWell(onTap: ()async {

                    // },
                    //   child: Icon(
                    //     Icons.share_outlined,
                    //     size: 25,
                    //     color: Colors.grey.shade600,
                    //   ),
                    // ),
                    40.heightBox,
                  ]),
            ),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(10)),
            height: mediaqury.height * .2,
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: mediaqury.height * .35,
            child: AnotherCarousel(
              animationCurve: Curves.easeInOut,
              borderRadius: true,
              images: const [
                NetworkImage(
                  "https://www.tourmyindia.com/blog/wp-content/uploads/2021/03/Best-Places-to-Visit-in-Kerala.jpg",
                ),
                NetworkImage(
                    "https://assets.traveltriangle.com/blog/wp-content/uploads/2016/07/limestone-rock-phang-nga-1-Beautiful-limestone-rock-in-the-ocean.jpg"),
                NetworkImage(
                    "https://www.jetsetter.com//uploads/sites/7/2018/04/eXCHxob--1380x1035.jpeg")
              ],
              boxFit: BoxFit.cover,
              indicatorBgPadding: 6,
              dotBgColor: Colors.transparent,
              radius: const Radius.circular(15),
            ),
          ),
        ),
      ]),
    );
  }
}
