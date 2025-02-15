import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/changepassword.dart';
import 'package:mendmate_worker/editprofilescreen.dart';
import 'package:mendmate_worker/login_screen.dart';

class Profilescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 10,
            color: Colors.blue,
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
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    'https://randomuser.me/api/portraits/men/85.jpg') // Change this to NetworkImage if needed
                                ),
                            Positioned(
                              bottom: -3,
                              right: -3,
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
                                      color: Colors.white, // Border color
                                      width: 3.0, // Border width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Color(0xff3D56A2),
                                    radius: 18,
                                    child: Icon(Icons.edit,
                                        color: Colors.white, size: 18),
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
                              color: Colors.black)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ashutosh@gmail.com",
                        style: GoogleFonts.workSans(
                            fontSize: 14,
                            color: Color(
                              0xff6C757D,
                            ),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Changepasswordscreen()));
              },
              child: Container(
                color: Color(0xffF6F7F9),
                height: 35,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text('Change Password',
                            style: GoogleFonts.roboto(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Container(
              color: Color(0xffF6F7F9),
              height: 30,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Earning List',
                      style: GoogleFonts.roboto(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromWidth(300),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(12)),
                  backgroundColor: Color(0xff3C549F)),
              onPressed: () {
                _showPopuplogout(context);
              },
              child: Text(
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w600, color: Colors.white),
                  'Logout'),
            ),
          ),
        ],
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
                                    loginpage(),
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
