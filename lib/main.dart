import 'package:flutter/material.dart';
import 'otp_temp.dart';
import 'package:linguini_app/choose_account.dart';
import 'package:linguini_app/login.dart';
import 'package:linguini_app/profile_setup_1.dart';
import 'splash_page.dart';
import 'package:linguini_app/chat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatListPage(),
    );
  }
}
