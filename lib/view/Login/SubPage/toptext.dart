// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Loginpage_toptext extends StatelessWidget {
  const Loginpage_toptext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Center(
          child: "promilo"
              .text
              .extraBlack
              .xl2
              .color(const Color.fromARGB(255, 2, 27, 62))
              .bold
              .make(),
        ),
        60.heightBox,
            Center(
              child: "Hi,Welcome Back!"
                  .text
                  .extraBlack
                  .xl2
                  .color(const Color.fromARGB(255, 2, 27, 62))
                  .bold
                  .make(),
            ),
      ],
    );
  }
}
