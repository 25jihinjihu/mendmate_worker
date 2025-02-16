import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/chatapp.dart';

class Chatboxscreen extends StatelessWidget {
  final String name;
  final String imageUrl;
  const Chatboxscreen({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 85,
          leading: Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon:
                      Icon(color: Colors.white, size: 30, Icons.chevron_left)),
              CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(imageUrl),
              ),
            ],
          ),
          backgroundColor: Color(0xff3D56A2),
          title: Text(
            style: GoogleFonts.workSans(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
            name,
          ),
        ),
        body: ChatApp());
  }
}
