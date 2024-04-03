import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home_page.dart';
import 'package:whatsapp_clone/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightMode,
      darkTheme: darkMode,
      home: HomePage(),
    );
  }
}