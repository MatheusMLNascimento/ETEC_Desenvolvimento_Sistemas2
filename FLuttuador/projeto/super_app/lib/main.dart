import 'package:flutter/material.dart';
import 'package:super_app/widgets/home_page.dart';

void main() {
  runApp(SuperApp());
}

class SuperApp extends StatelessWidget {
  const SuperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperApp',
      home: HomePage(),

    );
  }
}