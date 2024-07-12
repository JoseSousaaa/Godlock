import 'package:flutter/material.dart';
// ignore: lines_longer_than_80_chars
import 'login_page.dart'; // Certifique-se de que o login_page.dart está corretamente implementado e importado

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
      debugShowCheckedModeBanner: false, // Remove o banner de debug
      home: const LoginWidget(),
    );
  }
}
