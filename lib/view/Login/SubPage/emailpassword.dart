// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Email_passwordtextformfield extends StatelessWidget {
   Email_passwordtextformfield({
    super.key, this.Content,this.hinttxt, required this.controllers
  });
  String ?Content;
  String  ?hinttxt;
  final TextEditingController controllers;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          child: "${Content}"
              .text
              .color(const Color.fromARGB(255, 2, 58, 95))
              .size(15)
              .medium
              .make(),
        ),
        TextField( controller:controllers ,
          decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            hintText: hinttxt,
            hintStyle: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }
}