
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Email_passwordtextformfield extends StatelessWidget {
  Email_passwordtextformfield(
      {super.key, this.Content, this.hinttxt, required this.controllers,required this.passwordhaid});
  String? Content;
  String? hinttxt;
  final TextEditingController controllers;
  bool passwordhaid;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your email';
    } else if (!RegExp(r'^)Z]{2,7}$')
        .hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
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
          TextFormField(obscureText: passwordhaid ,
            keyboardType: TextInputType.emailAddress,
            controller: controllers,
            validator: _validateEmail,
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
      ),
    );
  }
}
