import 'package:flutter/material.dart';
import 'package:ss29m/screen/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:RegisterScreen(),
    );
  }
}

