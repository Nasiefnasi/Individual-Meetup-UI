// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, camel_case_types

import 'package:flutter/material.dart';
import 'package:ui_task_bangalore_nasief/imageslist.dart';
import 'package:ui_task_bangalore_nasief/view/individualMeetuppage/Subpage/PopularPeoplecard.dart';
import 'package:ui_task_bangalore_nasief/view/individualMeetuppage/Subpage/search.dart';
import 'package:ui_task_bangalore_nasief/view/individualMeetuppage/Subpage/TopMeetUpPageImageSlider.dart';
import 'package:ui_task_bangalore_nasief/view/individualMeetuppage/Subpage/TrendingMeetup.dart';
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
          child: Padding(
        padding: const EdgeInsets.all(8.0),
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
        ),
      )),
    );
  }
}
