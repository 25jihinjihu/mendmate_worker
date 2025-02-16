import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/chatscreen.dart';

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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                style: GoogleFonts.workSans(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
                'Mendmate'),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Chatscreen()));
              },
              child: SvgPicture.asset(
                'assets/Chat.svg',
                height: 17,
                color: Colors.white,
              ),
            )
          ],
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Ashutosh Pandey',
                style: GoogleFonts.workSans(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 4),
              Text('Welcome Back!',
                  style: GoogleFonts.workSans(
                      color: Color(0xffA3A8AD), fontWeight: FontWeight.w600)),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Reviews',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                              return Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: SvgPicture.asset(
                                  'assets/Star 3.svg',
                                  color: Colors.amber,
                                  height: 12,
                                ),
                              );
                            }),
                          ),
                          SizedBox(height: 4),
                          Text(
                            review['review']!,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff91979D)),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
