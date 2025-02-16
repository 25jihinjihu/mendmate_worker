import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Earninglistpage extends StatelessWidget {
  const Earninglistpage({super.key});

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
            'Earning List',
          ),
          backgroundColor: Color(0xff3D56A2),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
        ));
  }
}
