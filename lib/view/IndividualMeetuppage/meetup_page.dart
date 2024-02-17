// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MeetUpPage extends StatefulWidget {
  const MeetUpPage({super.key});

  @override
  State<MeetUpPage> createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> {
  late PageController _pageController;
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    var mediaqury = MediaQuery.of(context).size;
    int activePage = 1;

    List<String> images = [
      "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
      "https://wallpaperaccess.com/full/2637581.jpg",
      "https://images.wallpapersden.com/image/download/purple-sunrise-4k-vaporwave_bGplZmiUmZqaraWkpJRmbmdlrWZlbWU.jpg",
      "https://uhdwallpapers.org/uploads/converted/20/01/14/the-mandalorian-5k-1920x1080_477555-mm-90.jpg"
    ];

    return Scaffold(
      // backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: "Individual Meetup".text.black.make(),
        leading: const Icon(
          Icons.chevron_left_outlined,
          color: Colors.black,
        ),
      ),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            20.heightBox,
            Center(
              child: SizedBox(
                width: mediaqury.width * 0.9,
                height: mediaqury.height * .05,
                child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: const Icon(
                      Icons.mic_none_outlined,
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                      color: Colors.black,
                    ),
                    hintText: "Search",
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                  ),
                ),
              ),
            ),
            // Container(
            //   height: 140,
            //   child: PageView.builder(
            //       itemCount: 3,
            //       pageSnapping: true,
            //       itemBuilder: (context, pagePosition) {
            //         return Container(
            //             margin: EdgeInsets.all(10),
            //             child: Image.network(images[pagePosition]));
            //       }),
            // )
            20.heightBox,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: mediaqury.width * 0.9,
                height: 160,
                child: Stack(
                  children: [
                    AnotherCarousel(
                      autoplay: false,
                      borderRadius: true,
                      images: const [
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
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 22, top: 20, bottom: 10),
              child: "Trending Popular People".text.medium.size(18).make(),
            ),

            // Center(
            //   child: Container(
            //       color: Colors.amberAccent,
            //       height: 200,
            //       width: double.infinity,
            //       child: ListView.builder(scrollDirection: Axis.horizontal,
            //         itemCount: 3,
            //         itemBuilder: (context, index) {
            //           return Trendingcard(mediaqury: mediaqury);
            //         },
            //       )),
            // ),
            

            Center(
              child: Container(
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
                          borderRadius:
                              const BorderRadius.all(Radius.circular(13)),
                          border: Border.all(
                            color: Colors.black54,
                            width: 2.5,
                          ),
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: mediaqury.height * .080,
                                child: Row(children: [
                                  15.widthBox,
                                  const CircleAvatar(
                                    radius: 22,
                                    child: CircleAvatar(backgroundColor: Colors.white,
                                      backgroundImage: NetworkImage(
                                        "https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png",
                                      ),
                                      radius: 20,
                                    ),
                                  ),
                                  10.widthBox,
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                    height: 40, child: const popularPeople()),
                              ),
                              Row(
                                children: [
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 15,
                                    ),
                                    child: SizedBox(
                                      height: 25,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
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
            ),

            Padding(
              padding: const EdgeInsets.only(left: 22, top: 20, bottom: 10),
              child: "Top Trending Meetups".text.medium.size(18).make(),
            ),
          ],
        ),
      )),
    );
  }
}


class Trendingcard extends StatelessWidget {
  const Trendingcard({
    Key? key,
    required this.mediaqury,
  }) : super(key: key);

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            border: Border.all(color: Colors.black54)),
        height: mediaqury.height * .22,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: mediaqury.height * .080,
            child: Row(children: [
              15.widthBox,
              const CircleAvatar(
                radius: 22,
                child: CircleAvatar(
                  radius: 20,
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 40, child: const popularPeople()),
          ),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: SizedBox(
                  height: 25,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blue[900]),
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
  }
}

class popularPeople extends StatelessWidget {
  const popularPeople({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: CircleAvatar(
          radius: 21,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30),
        child: CircleAvatar(
          radius: 21,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 60),
        child: CircleAvatar(
          radius: 21,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 90),
        child: CircleAvatar(
          radius: 21,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 120),
        child: CircleAvatar(
          radius: 21,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
