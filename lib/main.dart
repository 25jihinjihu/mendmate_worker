import 'package:flutter/material.dart';
import 'package:mendmate_worker/loadingscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff7879CA)),
        useMaterial3: true,
      ),
      home: Loadingscreen(),
    );
  }
}
