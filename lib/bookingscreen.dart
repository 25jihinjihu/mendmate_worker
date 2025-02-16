import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/bookingscreencard.dart';

class Bookingscreen extends StatelessWidget {
  const Bookingscreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Booking',
            style: GoogleFonts.workSans(
                color: Colors.white, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Color(0xff3D56A2),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: DropdownButtonFormField<String>(
                    style: const TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black87),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF6F7F9)),
                            borderRadius: BorderRadius.circular(8)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff9DAAD0), width: 2)),
                        labelStyle:
                            GoogleFonts.workSans(color: Color(0xff9AA0A5)),
                        labelText: "Sort by",
                        filled: true,
                        fillColor: Color(0xffF6F7F9), // Light background color
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8))),
                    dropdownColor: Color(0xffF6F7F9),
                    items: [
                      'All',
                      'Pending',
                      'Accepted',
                      'Completed',
                    ]
                        .map((city) =>
                            DropdownMenuItem(value: city, child: Text(city)))
                        .toList(),
                    onChanged: (value) {
                      print("Selected City: $value");
                    },
                  ),
                ),
                Bookingscreencard(
                  serviceimagepath:
                      'assets/electrician-expertly-fixing-cctv-camera-generative-ai_431161-22009.jpg',
                  status: 'Pending',
                  bookingid: '102001',
                  servicename: 'CCTV Fixing',
                  userlocation: '670331 Morazha co-op Arts and science collage',
                  date: 'Feb 10 2025',
                  username: 'David James',
                  time: '10.30 Pm',
                ),
                Bookingscreencard(
                  serviceimagepath:
                      'assets/Contractor-Recommendation-1536x1024.jpg.webp',
                  status: 'Accepted',
                  bookingid: '102002',
                  servicename: 'Plumbing Work',
                  userlocation: '670331 Morazha co-op Arts and science collage',
                  date: 'Feb 6 2025',
                  username: 'David James',
                  time: '10.30 Pm',
                ),
                Bookingscreencard(
                    serviceimagepath:
                        'assets/When-can-I-return-to-dusty-environments-after-LASIK-Dr-Matthew-Russell-VSON-Laser-Vision-Specialists-Brisbane.webp',
                    status: 'Completed',
                    bookingid: '102003',
                    servicename: 'Carpentry work',
                    userlocation:
                        '670331 Morazha co-op Arts and science collage',
                    date: 'Dec 6 2024',
                    username: 'David James',
                    time: '7.30 AM'),
                Bookingscreencard(
                  serviceimagepath: 'assets/pop-false-ceiling-work.jpg',
                  status: 'Pending',
                  bookingid: '102004',
                  servicename: 'Cieling Work',
                  userlocation: '670331 Morazha co-op Arts and science collage',
                  date: 'jan 30 2024',
                  username: 'David James',
                  time: '5.30 PM',
                ),
                Bookingscreencard(
                  serviceimagepath: 'assets/Depositphotos_282950500_S.jpg',
                  status: 'Accepted',
                  bookingid: '102005',
                  servicename: 'CCTV Fixing',
                  userlocation: '670331 Morazha co-op Arts and science collage',
                  date: 'Feb 20 2025',
                  username: 'David James',
                  time: '1.30 PM',
                ),
                Bookingscreencard(
                  serviceimagepath:
                      'assets/electrician-expertly-fixing-cctv-camera-generative-ai_431161-22009.jpg',
                  status: 'Completed',
                  bookingid: '102006',
                  servicename: 'CCTV Fixing',
                  userlocation: '670331 Morazha co-op Arts and science collage',
                  date: 'Feb 1 2025',
                  username: 'David James',
                  time: '11.30Am',
                ),
                Bookingscreencard(
                  serviceimagepath: 'assets/Ravinia_Electric.png.webp',
                  status: 'Pending',
                  bookingid: '102007',
                  servicename: 'Electrical Work',
                  userlocation: '670331 Morazha co-op Arts and science collage',
                  date: 'Jan 5 ',
                  username: 'David James',
                  time: '10.30 Am',
                ),
              ],
            ),
          ),
        ));
  }
}
