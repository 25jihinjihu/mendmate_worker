import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
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
        title: Text("Notification"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Text("New",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ...notifications
              .map((notification) => NotificationTile(notification))
              .toList(),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final Map<String, String> notification;

  NotificationTile(this.notification);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/avatar.png"),
        ),
        title: Text(notification["title"]!,
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("New Booking Added by ${notification["name"]}"),
        trailing:
            Text(notification["time"]!, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
