// ignore_for_file: file_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:ui_task_bangalore_nasief/model/loginpagesocialmediaicons/socialmedia.dart';
import 'package:ui_task_bangalore_nasief/view/Login/emailpassword.dart';
import 'package:ui_task_bangalore_nasief/view/Login/submitbotton.dart';
import 'package:ui_task_bangalore_nasief/view/Login/toptext.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
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
            // 60.heightBox,
            // Center(
            //   child: "Hi,Welcome Back!"
            //       .text
            //       .extraBlack
            //       .xl2
            //       .color(const Color.fromARGB(255, 2, 27, 62))
            //       .bold
            //       .make(),
            // ),
            40.heightBox,
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            //   child: "Please Sign in to continue"
            //       .text
            //       .color(const Color.fromARGB(255, 2, 58, 95))
            //       .size(15)
            //       .medium
            //       .make(),
            // ),
            const Email_passwordtextformfield(),
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
            const Email_passwordtextformfield(),

            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            //   child: "Password"
            //       .text
            //       .color(const Color.fromARGB(255, 2, 58, 95))
            //       .size(15)
            //       .medium
            //       .make(),
            // ),
            // const TextField(
            //   decoration: InputDecoration(
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.grey, width: 2),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(15),
            //       ),
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderSide: BorderSide(color: Colors.grey, width: 2),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(15),
            //       ),
            //     ),
            //     hintText: "Enter Password",
            //     hintStyle: TextStyle(fontSize: 15),
            //   ),
            // ),
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
             Submit_botton(mediaqury: mediaqury),
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




