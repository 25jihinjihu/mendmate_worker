import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Editprofilescreencard extends StatelessWidget {
  final String title;
  final SvgPicture icon;
  const Editprofilescreencard(
      {super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18),
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
                  decoration: InputDecoration(
                      labelStyle: GoogleFonts.workSans(
                          letterSpacing: 2,
                          color: Color(0xff9AA0A5),
                          fontWeight: FontWeight.w500),
                      labelText: title,
                      enabledBorder: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff9DAAD0), width: 2)),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: icon,
                      ),
                      suffixIconConstraints:
                          BoxConstraints(maxHeight: 20, maxWidth: 40)),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
