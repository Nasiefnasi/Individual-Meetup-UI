// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ui_task_bangalore_nasief/view/individualMeetuppage/Subpage/MidTrendingcard.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // color: Colors.amberAccent,
        height: 190,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: mediaqury.width * .8,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  border: Border.all(
                    color: Colors.black54,
                    width: 2.5,
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mediaqury.height * .080,
                        child: Row(children: [
                          15.widthBox,
                          const CircleAvatar(
                            radius: 19,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: NetworkImage(
                                "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png",
                              ),
                              radius: 16,
                            ),
                          ),
                          10.widthBox,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 150,
                                child: "Author"
                                    .text
                                    .overflow(TextOverflow.ellipsis)
                                    .medium
                                    .size(20)
                                    .make(),
                              ),
                              SizedBox(
                                width: 150,
                                child: "1,028 Meetups"
                                    .text
                                    .gray500
                                    .overflow(TextOverflow.ellipsis)
                                    .make(),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(
                          thickness: 2,
                        ),
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: SizedBox(height: 40, child: PopularPeople()),
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 15,
                            ),
                            child: SizedBox(
                              height: 25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.blue[900]),
                                ),
                                onPressed: () {},
                                child: "See more".text.make(),
                              ),
                            ),
                          )
                        ],
                      ),
                    ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
