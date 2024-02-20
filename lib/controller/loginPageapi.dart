// ignore_for_file: avoid_print, use_build_context_synchronously, file_names

import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ui_task_bangalore_nasief/view/bottomnavbar/navbar.dart';
class ApiServies extends ChangeNotifier {
  static const String apiUrl = 'https://apiv2stg.promilo.com/user/oauth/token';

  Future<void> login(
      String email, String password, BuildContext context) async {
    try {
      final sha256Password  = _sha256(password);

      final formData = {
        'username': email,
        'password': sha256Password,
        'grant_type': 'password',
      };

      final headers = {
        'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
        'Content-Type': 'application/x-www-form-urlencoded',
      };

      final response = await http.post(
        Uri.parse(apiUrl),
        body: formData,
        headers: headers,
      );

      if (response.statusCode == 200) {
        print('Login successful');
        print('Response body: ${response.body}');
        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return const BottomNav();
                            },
                          ),
                        );
      } else {
        print('Login failed: ${response.statusCode}');
        print('Response body: ${response.body}');
      
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Invalid ID Password'),
              content: const Text('Please check your email and password.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  String _sha256(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
  
}