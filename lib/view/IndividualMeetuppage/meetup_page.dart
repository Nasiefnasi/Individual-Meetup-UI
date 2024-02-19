// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, camel_case_types

import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MeetUpPage extends StatefulWidget {
  const MeetUpPage({super.key});

  @override
  State<MeetUpPage> createState() => _MeetUpPageState();
}

class _MeetUpPageState extends State<MeetUpPage> {
  @override
  void initState() {
    super.initState();
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
            SearchMeetUp(mediaqury: mediaqury),
           
            20.heightBox,
            MeetUpPageImageSlider(mediaqury: mediaqury),

            Padding(
              padding: const EdgeInsets.only(left: 22, top: 20, bottom: 10),
              child: "Trending Popular People".text.medium.size(18).make(),
            ),

           
            PopularCard(mediaqury: mediaqury),

            Padding(
              padding: const EdgeInsets.only(left: 22, top: 10, bottom: 10),
              child: "Top Trending Meetups".text.medium.size(18).make(),
            ),
            TopTrendingMeetupCard(mediaqury: mediaqury, images: images),
            10.heightBox,
          ],
        ),
      )),
    );
  }
}

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
              decoration: BoxDecoration(image:DecorationImage(image: NetworkImage(images[index],),fit: BoxFit.cover),
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
                      child:
                          Image.asset("image/image top leyar-01.png")),
                ),
                Align(
                  alignment: const Alignment(1.2, 1),
                  child: SizedBox(
                      width: 110,
                      child: "0${1+index}".text.size(80).extraBlack.make()),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}

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
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: SizedBox(
                            height: 40, child: popularPeople()),
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
    );
  }
}

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
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(10)),
        width: mediaqury.width * 0.9,
        height: 160,
        child: Stack(
          children: [
            AnotherCarousel(autoplay: true,
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
    );
  }
}

class SearchMeetUp extends StatelessWidget {
  const SearchMeetUp({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return Center(
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
          SizedBox(
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
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(height: 40, child: popularPeople()),
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
         
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 30),
        child: CircleAvatar(
         
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 60),
        child: CircleAvatar(
         
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 90),
        child: CircleAvatar(
         
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 120),
        child: CircleAvatar(
         
          child: CircleAvatar(
            radius: 16,
            backgroundColor: Colors.white,
          ),
        ),
      ),
    ]);
  }
}
