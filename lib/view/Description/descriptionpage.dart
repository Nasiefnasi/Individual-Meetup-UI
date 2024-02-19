// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:ui_task_bangalore_nasief/view/Description/subpage/imageslider.dart';
import 'package:ui_task_bangalore_nasief/view/Description/subpage/rating.dart';
import 'package:velocity_x/velocity_x.dart';

class Descriptionpage extends StatelessWidget {
  const Descriptionpage({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaqury = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: "Description".text.black.make(),
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.chevron_left_rounded,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: SafeArea(
            child: ListView(
          children: [
            Descriptionimagesilder(mediaqury: mediaqury),
            20.heightBox,
            Ratingstarbox(mediaqury: mediaqury),
            20.heightBox,
            "Actor Name".text.bold.blue900.size(17).make(),
            10.heightBox,
            "Indian Actress".text.size(15).gray500.make(),
            15.heightBox,
            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 20,
                  color: Colors.black54,
                ),
                10.widthBox,
                "Duration 20 Mins".text.gray600.make(),
              ],
            ),
            10.heightBox,
            Row(
              children: [
                const Icon(
                  Icons.wallet_rounded,
                  size: 20,
                  color: Colors.black54,
                ),
                10.widthBox,
                "Total Average Fees ₹9,999".text.gray600.make(),
              ],
            ),
            10.heightBox,
            "About".text.bold.blue900.size(18).make(),
            10.heightBox,
            const ReadMoreText(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of  de Finibus Bonorum et Malorum  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet., comes from a line in section 1.10.32The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.'",
              trimLines: 5,
              style: TextStyle(color: Colors.black54, fontSize: 12),
              colorClickableText: Colors.pink,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Show more',
              trimExpandedText: 'Show less',
              lessStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
              moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        )),
      ),
    );
  }
}
