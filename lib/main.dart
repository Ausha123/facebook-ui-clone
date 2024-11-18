import 'package:flutter/material.dart';
import 'package:widget_explain_app/screens/facebook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.blue,
      home: FacebookHome(),
    );
  }
}
