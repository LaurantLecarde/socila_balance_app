import 'package:flutter/material.dart';
import 'package:socila_balance_app/screens/delete_profile_screen.dart';
import 'package:socila_balance_app/screens/grandfather_screen.dart';
import 'package:socila_balance_app/screens/home_page.dart';
import 'package:socila_balance_app/screens/login_screen.dart';
import 'package:socila_balance_app/screens/login_with_number.dart';
import 'package:socila_balance_app/screens/main_screen.dart';
import 'package:socila_balance_app/screens/my_note_screen.dart';
import 'package:socila_balance_app/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const ProfilePage(),
    );
  }
}
