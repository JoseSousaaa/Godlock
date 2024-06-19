import 'package:flutter/material.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Godlock Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginWidget(),
    );
  }
}