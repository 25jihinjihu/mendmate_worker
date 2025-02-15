import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      'name': 'Donna Bins',
      'date': '02 dec',
      'rating': '4.5',
      'image': 'https://randomuser.me/api/portraits/men/85.jpg',
      'review':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet'
    },
    {
      'name': 'Ashutosh Pandey',
      'date': '25 Jan',
      'rating': '4.5',
      'image': 'https://randomuser.me/api/portraits/men/85.jpg',
      'review':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet.'
    },
    {
      'name': 'Kristin Watson',
      'date': '30 Jan',
      'rating': '4.5',
      'image': 'https://randomuser.me/api/portraits/men/85.jpg',
      'review':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet.'
    },
    {
      'name': 'Jerome Bell',
      'date': '25 Feb',
      'rating': '4.5',
      'image': 'https://randomuser.me/api/portraits/men/85.jpg',
      'review':
          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(style: TextStyle(color: Colors.white), 'Mendmate'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Ashutosh Pandey',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text('Welcome Back!', style: TextStyle(color: Colors.grey)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reviews',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('View All', style: TextStyle(color: Colors.blue)),
              ],
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  final review = reviews[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(review['image']!),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          review['name']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          review['date']!,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: List.generate(5, (i) {
                            return Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            );
                          }),
                        ),
                        SizedBox(height: 4),
                        Text(review['review']!),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
