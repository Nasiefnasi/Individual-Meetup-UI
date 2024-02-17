import 'package:flutter/material.dart';

import 'package:ui_task_bangalore_nasief/view/bottomnavbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, 
        home: BottomNav());
  }
}
