import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Submit_botton extends StatelessWidget {
  const Submit_botton({
    super.key,
    required this.mediaqury,
  });

  final Size mediaqury;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mediaqury.width,
      height: mediaqury.height * .07,
      child: Expanded(
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.blue.withOpacity(0.20)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      side: const BorderSide(width: 2, color: Colors.blue),
                      borderRadius: BorderRadius.circular(15)))),
              onPressed: () {},
              child: "Submit".text.xl.make())),
    );
  }
}