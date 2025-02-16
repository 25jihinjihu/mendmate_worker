import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, String>> notifications = [
    {"title": "Add Booking", "name": "Amit Pandey", "time": "02 min ago"},
    {"title": "Cancel Booking", "name": "Stan Dupp", "time": "25 min ago"},
    {"title": "Add Booking", "name": "Anna Domino", "time": "30 min ago"},
    {"title": "Cancel Booking", "name": "Albert Watson", "time": "25 min ago"},
    {"title": "Add Booking", "name": "Mustafa Leek", "time": "1 day ago"},
    {"title": "Cancel Booking", "name": "Mary Krismass", "time": "2 days ago"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: GoogleFonts.workSans(
              color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New",
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Mark as all read',
                      style: GoogleFonts.workSans(
                          color: Color(0xff556BAD),
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ))
              ],
            ),
            ...notifications
                .map((notification) => NotificationTile(notification))
                .toList(),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatefulWidget {
  final Map<String, String> notification;

  NotificationTile(this.notification);

  @override
  _NotificationTileState createState() => _NotificationTileState();
}

class _NotificationTileState extends State<NotificationTile> {
  Color cardColor = Colors.white;

  void changeColor(bool isPressed) {
    setState(() {
      cardColor = isPressed ? Color(0xffF6F7F9) : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => changeColor(true), // When pressed, change color
      onTapUp: (_) => changeColor(false), // When released, revert color
      onTapCancel: () => changeColor(false),
      child: Card(
        color: cardColor,
        elevation: .0,
        child: ListTile(
          minTileHeight: 90,
          leading: ClipRRect(
            borderRadius: BorderRadiusDirectional.circular(8),
            child: Container(
                height: 60,
                child: Image.network(
                    fit: BoxFit.cover,
                    'https://randomuser.me/api/portraits/men/85.jpg')),
          ),
          title: Text(widget.notification["title"]!,
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New Booking Added by ",
                style: GoogleFonts.workSans(
                    fontWeight: FontWeight.w400, color: Color(0xff91989E)),
              ),
              Text('${widget.notification["name"]}',
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w400, color: Colors.black))
            ],
          ),
          trailing: Text(widget.notification["time"]!,
              style: TextStyle(color: Colors.grey)),
        ),
      ),
    );
  }
}
