import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Changepasswordscreen extends StatelessWidget {
  const Changepasswordscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        titleSpacing: -10,
        centerTitle: false,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(size: 30, color: Colors.white, Icons.chevron_left)),
        title: Text(
          style: GoogleFonts.workSans(
              fontSize: 19, fontWeight: FontWeight.w500, color: Colors.white),
          'Change Password',
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Your new password must be different from previous used password',
                  style: GoogleFonts.workSans(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff6C757D)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 53,
                    decoration: BoxDecoration(
                        color: Color(0xffF6F7F9),
                        borderRadius: BorderRadiusDirectional.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.workSans(
                                      color: Color(0xff9AA0A5),
                                      fontWeight: FontWeight.w500),
                                  labelText: '  New Password',
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9DAAD0), width: 2)),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: SvgPicture.asset(
                                        color: Color(0xff9AA0A5),
                                        'assets/eye-crossed.svg'),
                                  ),
                                  suffixIconConstraints: BoxConstraints(
                                      maxHeight: 20, maxWidth: 40)),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text(
                    'Must be atleast 8 characters !',
                    style: GoogleFonts.workSans(
                        fontWeight: FontWeight.w500, color: Colors.red),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: 53,
                    decoration: BoxDecoration(
                        color: Color(0xffF6F7F9),
                        borderRadius: BorderRadiusDirectional.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  labelStyle: GoogleFonts.workSans(
                                      color: Color(0xff9AA0A5),
                                      fontWeight: FontWeight.w500),
                                  labelText: '  Re-enter Password',
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xff9DAAD0), width: 2)),
                                  suffixIcon: Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: SvgPicture.asset(
                                        color: Color(0xff9AA0A5),
                                        'assets/eye-crossed.svg'),
                                  ),
                                  suffixIconConstraints: BoxConstraints(
                                      maxHeight: 20, maxWidth: 40)),
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                ),
                Text(
                  'Both password must match',
                  style: GoogleFonts.workSans(
                      fontWeight: FontWeight.w500, color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 300),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size.fromWidth(300),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusDirectional.circular(12)),
                        backgroundColor: Color(0xff3C559F)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                        style: GoogleFonts.workSans(
                            fontWeight: FontWeight.w600, color: Colors.white),
                        'Confirm'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
