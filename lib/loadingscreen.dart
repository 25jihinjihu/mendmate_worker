import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mendmate_worker/login_screen.dart';

class Loadingscreen extends StatefulWidget {
  const Loadingscreen({super.key});

  @override
  _LoadingscreenState createState() => _LoadingscreenState();
}

class _LoadingscreenState extends State<Loadingscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 12), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => loginpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          height: 100,
                          width: 100,
                          'assets/logo-transparent-png.png'),
                      Text(
                        'Mendmate',
                        style: GoogleFonts.workSans(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: Stack(
                      fit: StackFit.loose,
                      alignment: Alignment.center,
                      children: [
                        Lottie.asset(
                          'assets/Animation - 1738678379122.json',
                          width: 300,
                          height: 300,
                          repeat: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 150,
                          ),
                          child: Lottie.asset(
                            'assets/Animation - 1738679509919.json',
                            width: 300,
                            height: 300,
                            repeat: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 200),
                          child: Center(
                            child: Text("Loading...",
                                style: GoogleFonts.workSans(
                                    color: Color(0xff90979D),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18)),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
