import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/custombottomnavbar.dart';
import 'package:mendmate_worker/signupscreen.dart';

class loginpage extends StatelessWidget {
  const loginpage({super.key});

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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hello User",
                  style: GoogleFonts.workSans(
                      fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                Text(
                  "Welcome Back, You Have Been Missed For Long Time",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.workSans(
                      fontSize: 17,
                      color: Color(0xff7E868D),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 90),

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
                    obscureText: true,
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
                              color: Color(0xff6C757D),
                              'assets/eye-crossed.svg'),
                        ),
                        suffixIconConstraints:
                            BoxConstraints(maxHeight: 20, maxWidth: 40)),
                  ),
                ),
                SizedBox(height: 10),

                // Remember Me & Forgot Password
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            checkColor: Colors.white,
                            activeColor: Color(0xff3D56A2),
                            value: true,
                            onChanged: (val) {}),
                        Text(
                          "Remember Me",
                          style: GoogleFonts.workSans(
                              color: Color(
                                0xff6C757D,
                              ),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Forgot Password?",
                          style: GoogleFonts.workSans(
                              color: Color(0xff3D56A2),
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Login Button
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
                    "LOGIN",
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
                      "Don’t have an account? ",
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
                                    Signupscreen(),
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
                      child: Text("Sign Up",
                          style: GoogleFonts.workSans(
                              color: Color(0xff3D56A2),
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // Divider
                Row(
                  children: [
                    Expanded(
                        child:
                            Divider(thickness: 1, color: Colors.grey.shade300)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Or Continue With",
                          style: TextStyle(color: Colors.grey)),
                    ),
                    Expanded(
                        child:
                            Divider(thickness: 1, color: Colors.grey.shade300)),
                  ],
                ),
                SizedBox(height: 20),

                // Social Login Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffF6F7F9),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(milliseconds: 5),
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      Custombottomnavbar(),
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
                        icon: Image.asset(
                            height: 25,
                            'assets/google.png'), // Replace with actual image
                        iconSize: 40,
                      ),
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
}
