// // ignore_for_file: file_names, unused_local_variable, avoid_print

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:ui_task_bangalore_nasief/controller/loginPageapi.dart';

// import 'package:ui_task_bangalore_nasief/model/loginpagesocialmediaicons/socialmedia.dart';
// import 'package:ui_task_bangalore_nasief/view/Login/SubPage/emailpassword.dart';

// import 'package:ui_task_bangalore_nasief/view/Login/SubPage/toptext.dart';
// import 'package:ui_task_bangalore_nasief/view/bottomnavbar/navbar.dart';
// import 'package:velocity_x/velocity_x.dart';

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   bool isChecked = false;

//   TextEditingController emailcontroller = TextEditingController();
//   TextEditingController passwordcontroller = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     var mediaqury = MediaQuery.of(context).size;

//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: Consumer<ApiServies>(builder: (context, value, child) {
//         return Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: SafeArea(
//               child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,

//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               const Loginpage_toptext(),

//               40.heightBox,

//               Email_passwordtextformfield(passwordhaid: false,
//                   controllers: emailcontroller,
//                   Content: "Please Sign in to continue",
//                   hinttxt: "Enter Email or Mob No."),
//               Align(
//                 alignment: Alignment.topRight,
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 5),
//                   child: "Sign In With OTP"
//                       .text
//                       .color(const Color.fromARGB(255, 3, 104, 171))
//                       .size(18) 
//                       .medium
//                       .make(),
//                 ),
//               ),
//               Email_passwordtextformfield(passwordhaid: true,
//                   controllers: passwordcontroller,
//                   Content: "Password",
//                   hinttxt: "Enter Password"),
//               SizedBox(
//                 child: Row(
//                   children: [
//                     Checkbox(
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(4)),
//                       value: isChecked,
//                       onChanged: (bool? value) {
//                         setState(() {
//                           isChecked = value!;
//                         });
//                       },
//                     ),
//                     "Remember Me".text.gray600.size(15).make(),
//                     const Spacer(),
//                     Align(
//                       alignment: Alignment.topRight,
//                       child: Padding(
//                         padding: const EdgeInsets.all(10.0),
//                         child: "Forget Password"
//                             .text
//                             .color(const Color.fromARGB(255, 3, 104, 171))
//                             .size(18)
//                             .medium
//                             .make(),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 width: mediaqury.width,
//                 height: mediaqury.height * .07,
//                 child: Expanded(
//                     child: ElevatedButton(
//                         style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all(
//                                 Colors.blue.withOpacity(0.20)),
//                             shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                                     side: const BorderSide(
//                                         width: 2, color: Colors.blue),
//                                     borderRadius: BorderRadius.circular(15)))),
//                         onPressed: () async {
//                           print("Button is working");
//                           value.login(
//                               emailcontroller.text, passwordcontroller.text);

//                           Navigator.of(context)
//                               .pushReplacement(MaterialPageRoute(
//                             builder: (context) {
//                               return BottomNav();
//                             },
//                           ));
//                         },
//                         child: "Submit".text.xl.make())),
//               ),
//               // Submit_botton(mediaqury: mediaqury),
//               10.heightBox,
//               Row(
//                 children: [
//                   const Expanded(
//                     child: Divider(
//                       thickness: 1,
//                       color: Colors.black12,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: "or".text.make(),
//                   ),
//                   const Expanded(
//                     child: Divider(
//                       thickness: 1,
//                       color: Colors.black12,
//                     ),
//                   ),
//                 ],
//               ),
//               10.heightBox,
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   10.heightBox,
//                   const SocialmediaIMG(),
//                   const SocialmediaIMG(),
//                   const SocialmediaIMG(),
//                   const SocialmediaIMG(),
//                   10.heightBox
//                 ],
//               ),
//               25.heightBox,
//               Row(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       "Business User?".text.gray500.size(16).make(),
//                       5.heightBox,
//                       "Login Here"
//                           .text
//                           .color(Colors.blue)
//                           .medium
//                           .size(16)
//                           .make(),
//                     ],
//                   ),
//                   const Spacer(),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       "Don't have an account".text.gray500.size(16).make(),
//                       5.heightBox,
//                       "Sign Up".text.color(Colors.blue).medium.size(16).make(),
//                     ],
//                   )
//                 ],
//               ),
//               const Spacer(),
//               Center(
//                 child: RichText(
//                   text: const TextSpan(
//                     text: "By continuing, you agree to\n Promilo's",
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 14,
//                     ),
//                     children: [
//                       TextSpan(
//                         text: 'Terms of use & Privacy Policy.',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 14,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                   key: const Key('myRichTextWidgetKey'),
//                 ),
//               ),
//               10.heightBox
//             ],
//           )),
//         );
//       }),
//     );
//   }
// }
// import 'dart:convert';
// import 'dart:html';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ApiServies extends ChangeNotifier {
//   // Future<void> login(String email, String password) async {
//   //   try {
//   //     final response = await http.post(
//   //       Uri.parse("https://apiv2stg.promilo.com/user/oauth/token"),
//   //       headers: {
//   //         'Content-Type': 'application/x-www-form-urlencoded',
//   //         'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=='
//   //       },
//   //       body: {"email": email, "password": password, "grant_type": password},
//   //     );

//   //     if (response.statusCode == 200) {
//   //       var data = jsonDecode(response.body);
//   //       print("Success");
//   //       print(data);
//   //     } else {
//   //       print("Failed with status code: ${response.statusCode}");
//   //       print(response.body);
//   //     }
//   //   } catch (e) {
//   //     print("Error: $e");
//   //   }
//   // }

//   static const String apiUrl = 'https://apiv2stg.promilo.com/user/oauth/token';

//   Future  login(String email, String password)async {
//     try {
//        final sha256Password = _sha256(password);
//        final payload={
//         'username': email,
//         'password': sha256Password,
//         'grant_type': 'password',
//        };
//        final formData = FormData.fromMap(payload);
//        final headers = {
//         'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
//       };
//       final response = await http.post(
//         Uri.parse(apiUrl),
//         body: formData,
//         headers: headers,);
//         if (response.statusCode == 200) {
//         // Handle success, parse response if needed
//         print('Login successful');
//         print('Response body: ${response.body}');
//       } else {
//         // Handle error, show error message or perform other actions
//         print('Login failed: ${response.statusCode}');
//         print('Response body: ${response.body}');
//         // Display error message to the user
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Invalid ID Password'),
//               content: Text('Please check your email and password.'),
//               actions: [
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('OK'),
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     } catch (e) {print('Error: $e');}
//   }
//   String _sha256(String input) {
//     final bytes = utf8.encode(input);
//     final digest = sha256.convert(bytes);
//     return digest.toString();
//   }
// }
// ignore_for_file: file_names, unused_local_variable, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';

import 'package:provider/provider.dart';
import 'package:ui_task_bangalore_nasief/controller/loginPageapi.dart';
import 'package:http/http.dart' as http;
import 'package:ui_task_bangalore_nasief/model/loginpagesocialmediaicons/socialmedia.dart';
import 'package:ui_task_bangalore_nasief/view/Login/SubPage/emailpassword.dart';

import 'package:ui_task_bangalore_nasief/view/Login/SubPage/toptext.dart';
import 'package:ui_task_bangalore_nasief/view/bottomnavbar/navbar.dart';
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

  @override
  Widget build(BuildContext context) {
    var mediaqury = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Consumer<ApiServies>(builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Loginpage_toptext(),
                40.heightBox,
                Email_passwordtextformfield(
                  passwordhaid: false,
                  controllers: emailcontroller,
                  Content: "Please Sign in to continue",
                  hinttxt: "Enter Email or Mob No.",
                ),
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
                  passwordhaid: true,
                  controllers: passwordcontroller,
                  Content: "Password",
                  hinttxt: "Enter Password",
                ),
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
                          Colors.blue.withOpacity(0.20),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: const BorderSide(
                              width: 2,
                              color: Colors.blue,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () async {
                        print("Button is working");
                        value.login(
                          emailcontroller.text,
                          passwordcontroller.text,
                          context,
                        );

                        
                      },
                      child: "Submit".text.xl.make(),
                    ),
                  ),
                ),
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
                    10.heightBox,
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
                        "Login Here"
                            .text
                            .color(Colors.blue)
                            .medium
                            .size(16)
                            .make(),
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
            ),
          ),
        );
      }),
    );
  }
}





