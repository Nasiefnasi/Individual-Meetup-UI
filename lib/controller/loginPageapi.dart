// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiServies extends ChangeNotifier {
  Future<void> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse("https://apiv2stg.promilo.com/user/oauth/token"),
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg=='
        },
        body: {"email": email, "password": password, "grant_type": password},
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
}
