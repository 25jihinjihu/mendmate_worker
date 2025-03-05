import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/changepassword.dart';
import 'package:mendmate_worker/earninglistpage.dart';
import 'package:mendmate_worker/editprofilescreen.dart';
import 'package:mendmate_worker/login_screen.dart';

class Profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 450,
              color: Color(0xff3D56A2),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Stack(
                            children: [
                              CircleAvatar(
                                  radius: 70,
                                  backgroundImage: NetworkImage(
                                      'https://randomuser.me/api/portraits/men/85.jpg') // Change this to NetworkImage if needed
                                  ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Editprofilescreen()));
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color:
                                            Color(0xff3D56A2), // Border color
                                        width: 3.0, // Border width
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 18,
                                      child: SvgPicture.asset('assets/Edit.svg',
                                          color: Colors.black, height: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Ashutosh Pandey",
                            style: GoogleFonts.workSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white)),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Ashutosh@gmail.com",
                          style: GoogleFonts.workSans(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Positioned(
              left: 20,
              top: 240,
              child: Container(
                height: 110,
                width: MediaQuery.of(context).size.width - 80,
                decoration: BoxDecoration(
                    color: Color(0XFFF6F7F9),
                    borderRadius: BorderRadiusDirectional.circular(8)),
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            '259+',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text('Service Delivered'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '05+',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text('Years of Experience'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 50,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Changepasswordscreen()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              color: Color(0xff7E868D),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Change Password',
                                style: GoogleFonts.workSans(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Earninglistpage()));
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.rotate_left,
                              color: Color(0xff7E868D),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Earning List',
                                style: GoogleFonts.workSans(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 100, right: 100, top: 90),
                        child: TextButton(
                          onPressed: () {
                            _showPopuplogout(context);
                          },
                          child: Text(
                              style: GoogleFonts.workSans(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff3C549F)),
                              'Logout'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showPopuplogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Curved borders
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(width: 300, 'assets/plane.svg'),
                SizedBox(height: 40),
                Text(
                    style: GoogleFonts.workSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    'Oh No, You Are Leavings'),
                SizedBox(
                  height: 15,
                ),
                Text(
                    style: GoogleFonts.workSans(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff6C757D)),
                    'Are you sure you want to logout'),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Cancel Button
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        // Close dialog
                      },
                      child: Text(
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w600, color: Colors.black),
                          'No'),
                    ),
                    SizedBox(width: 20),
                    // Apply Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3C559F)),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 5),
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    LoginScreen(),
                            transitionsBuilder: (context, animation,
                                secondaryAnimation, child) {
                              return FadeTransition(
                                opacity: animation,
                                child: child,
                              );
                            },
                          ),
                          (route) => false,
                        );
                      },
                      child: Text(
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w600, color: Colors.white),
                          'Yes'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
