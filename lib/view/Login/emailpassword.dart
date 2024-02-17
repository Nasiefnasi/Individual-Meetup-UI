import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Email_passwordtextformfield extends StatelessWidget {
  const Email_passwordtextformfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: "Please Sign in to continue"
              .text
              .color(const Color.fromARGB(255, 2, 58, 95))
              .size(15)
              .medium
              .make(),
        ),
        const TextField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            hintText: "Enter Email or Mob No.",
            hintStyle: TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}