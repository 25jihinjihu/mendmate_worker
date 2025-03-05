import 'package:flutter/material.dart';
import 'package:mendmate_worker/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void checkLogin(BuildContext context) {
  Future.delayed(
      const Duration(
        milliseconds: 100,
      ), () {
    User? currentUser = Supabase.instance.client.auth.currentUser;
    if (!(currentUser != null)) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  });
}
