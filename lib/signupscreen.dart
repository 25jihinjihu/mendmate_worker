import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/custombottomnavbar.dart';
import 'package:mendmate_worker/login_screen.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Profile Icon
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff3D56A2),
                  child: SvgPicture.asset(
                      height: 40, 'assets/user (1).svg', color: Colors.white),
                ),
                SizedBox(height: 20),

                // Title
                Text(
                  "Hello Worker !",
                  style: GoogleFonts.workSans(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                Text(
                  "Signup For Better Experience",
                  style: GoogleFonts.workSans(
                      color: Color(0xff888F95), fontWeight: FontWeight.w500),
                ),

                SizedBox(height: 60),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F7F9),
                      borderRadius: BorderRadiusDirectional.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            color: Color(0xff9AA0A5),
                            fontWeight: FontWeight.w500),
                        labelText: '   Full Name',
                        enabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff9DAAD0), width: 2)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                              color: Color(0xff6C757D), 'assets/user (1).svg'),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40)),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F7F9),
                      borderRadius: BorderRadiusDirectional.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            color: Color(0xff9AA0A5),
                            fontWeight: FontWeight.w500),
                        labelText: '   Username',
                        enabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff9DAAD0), width: 2)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                              color: Color(0xff6C757D), 'assets/user (1).svg'),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40)),
                  ),
                ),
                SizedBox(height: 20),

                // Email TextField
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F7F9),
                      borderRadius: BorderRadiusDirectional.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            color: Color(0xff9AA0A5),
                            fontWeight: FontWeight.w500),
                        labelText: '   Email Address',
                        enabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff9DAAD0), width: 2)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                              color: Color(0xff6C757D), 'assets/envelope.svg'),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40)),
                  ),
                ),
                SizedBox(height: 20),

                // Password TextField
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F7F9),
                      borderRadius: BorderRadiusDirectional.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            color: Color(0xff9AA0A5),
                            fontWeight: FontWeight.w500),
                        labelText: '   Password',
                        enabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff9DAAD0), width: 2)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                              color: Color(0xff6C757D), 'assets/eye.svg'),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40)),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 53,
                  decoration: BoxDecoration(
                      color: Color(0xffF6F7F9),
                      borderRadius: BorderRadiusDirectional.circular(8)),
                  child: TextField(
                    decoration: InputDecoration(
                        labelStyle: GoogleFonts.workSans(
                            color: Color(0xff9AA0A5),
                            fontWeight: FontWeight.w500),
                        labelText: '   Contact Number',
                        enabledBorder: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xff9DAAD0), width: 2)),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                              color: Color(0xff6C757D),
                              'assets/phone-call.svg'),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40)),
                  ),
                ),
                SizedBox(height: 40),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 5),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            Custombottomnavbar(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                      (route) => false,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width - 50, 45),
                    backgroundColor: Color(0xff3D56A2),
                    padding:
                        EdgeInsets.symmetric(vertical: 12, horizontal: 100),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    "SIGNUP",
                    style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(height: 20),

                // Sign Up Option
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.workSans(
                          color: Color(0xff6C757D),
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
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
                      child: Text("Sign In",
                          style: GoogleFonts.workSans(
                              color: Color(0xff3D56A2),
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable TextField Widget
}
