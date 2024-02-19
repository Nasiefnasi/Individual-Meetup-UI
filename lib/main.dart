import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_task_bangalore_nasief/controller/loginPageapi.dart';
import 'package:ui_task_bangalore_nasief/view/Login/loginPage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider( providers: [ChangeNotifierProvider(create: (context) => ApiServies(),)],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, 
          home: LoginPage()),
    );
  }
}
