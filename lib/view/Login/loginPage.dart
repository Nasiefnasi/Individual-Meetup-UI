// ignore_for_file: file_names, unused_local_variable, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:ui_task_bangalore_nasief/model/loginpagesocialmediaicons/socialmedia.dart';
import 'package:ui_task_bangalore_nasief/view/Login/SubPage/emailpassword.dart';

import 'package:ui_task_bangalore_nasief/view/Login/SubPage/toptext.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("https://apiv2stg.promilo.com/user/oauth/token"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: {
          "email": email,
          "password": password,
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print("Success");
        print(data);
      } else {
        print("Failed with status code: ${response.statusCode}");
        print(response.body);
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var mediaqury = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Loginpage_toptext(),

            40.heightBox,

            Email_passwordtextformfield(
                controllers: emailcontroller,
                Content: "Please Sign in to continue",
                hinttxt: "Enter Email or Mob No."),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: "Sign In With OTP"
                    .text
                    .color(const Color.fromARGB(255, 3, 104, 171))
                    .size(18)
                    .medium
                    .make(),
              ),
            ),
            Email_passwordtextformfield(
                controllers: passwordcontroller,
                Content: "Password",
                hinttxt: "Enter Password"),
            SizedBox(
              child: Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  "Remember Me".text.gray600.size(15).make(),
                  const Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: "Forget Password"
                          .text
                          .color(const Color.fromARGB(255, 3, 104, 171))
                          .size(18)
                          .medium
                          .make(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: mediaqury.width,
              height: mediaqury.height * .07,
              child: Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.blue.withOpacity(0.20)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  side: const BorderSide(
                                      width: 2, color: Colors.blue),
                                  borderRadius: BorderRadius.circular(15)))),
                      onPressed: () async {
                        print(
                            "essssssssssssssssssssssssssssssssssssssssssssssss");
                        await login(
                            emailcontroller.text, passwordcontroller.text);
                      },
                      child: "Submit".text.xl.make())),
            ),
            // Submit_botton(mediaqury: mediaqury),
            10.heightBox,
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: "or".text.make(),
                ),
                const Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
            10.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                10.heightBox,
                const SocialmediaIMG(),
                const SocialmediaIMG(),
                const SocialmediaIMG(),
                const SocialmediaIMG(),
                10.heightBox
              ],
            ),
            25.heightBox,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Business User?".text.gray500.size(16).make(),
                    5.heightBox,
                    "Login Here".text.color(Colors.blue).medium.size(16).make(),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    "Don't have an account".text.gray500.size(16).make(),
                    5.heightBox,
                    "Sign Up".text.color(Colors.blue).medium.size(16).make(),
                  ],
                )
              ],
            ),
            const Spacer(),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "By continuing, you agree to\n Promilo's",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of use & Privacy Policy.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
                key: const Key('myRichTextWidgetKey'),
              ),
            ),
            10.heightBox
          ],
        )),
      ),
    );
  }
}
