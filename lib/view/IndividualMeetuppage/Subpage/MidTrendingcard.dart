// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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

class PopularPeople extends StatelessWidget {
  const PopularPeople({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(children: [
      Padding(
        padding: EdgeInsets.only(left: 0),
        child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy1ydR0vSc6MNXvmi5VbsjHxL6fLe8JvcuAg&usqp=CAU"),
          radius: 18,
          
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 25),
        child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkkeBQ0UMl_ilLs7FodfOgVGiwuZRbyQ2mRA&usqp=CAU"),
          radius: 18,
         
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 50),
        child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy1ydR0vSc6MNXvmi5VbsjHxL6fLe8JvcuAg&usqp=CAU"),
          radius: 18,
          
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 75),
        child: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkkeBQ0UMl_ilLs7FodfOgVGiwuZRbyQ2mRA&usqp=CAU"),
          radius: 18,
          
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 100),
        child: CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/id/1351060234/photo/shot-of-a-young-businessman-in-his-office.jpg?s=612x612&w=0&k=20&c=i-09UeAMza1Li0cEY2TOVzlkrRMyu49e0j4WW8chw0M="),
          radius: 18,
          
        ),
      ),
    ]);
  }
}