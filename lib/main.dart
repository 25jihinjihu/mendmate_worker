import 'package:flutter/material.dart';
import 'package:mendmate_worker/loadingscreen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Supabase.initialize(
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZ3dXdsemVoYmlpY3p0Y3J2a3JrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4NTY5NDgsImV4cCI6MjA0ODQzMjk0OH0.azGsDlu6e4fuAs44BQJw6G2ZBx4xU8qne6e_LhnAIkA',
    url: 'https://vwuwlzehbiicztcrvkrk.supabase.co',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff7879CA)),
        useMaterial3: true,
      ),
      home: Loadingscreen(),
    );
  }
}
