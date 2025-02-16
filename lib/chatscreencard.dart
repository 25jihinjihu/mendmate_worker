import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Chatscreencard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final int unreadCount;
  final String imageUrl;
  const Chatscreencard({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.unreadCount,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(
              name,
              style: GoogleFonts.workSans(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(
              style: GoogleFonts.workSans(
                  color: Color(
                    0xff6C757D,
                  ),
                  fontWeight: FontWeight.w500),
              message,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  time,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                if (unreadCount > 0) // Show unread badge only if count > 0
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color(0xff3D56A2),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      unreadCount.toString(),
                      style: GoogleFonts.workSans(
                          color: Colors.white, fontSize: 12),
                    ),
                  ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 1,
        )
      ],
    );
  }
}
