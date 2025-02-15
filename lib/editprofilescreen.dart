import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/editprofilescreencard.dart';

class Editprofilescreen extends StatelessWidget {
  const Editprofilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Edit Profile',
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
                    padding: const EdgeInsets.only(top: 40),
                    child: Stack(
                      children: [
                        CircleAvatar(
                            radius: 70,
                            backgroundImage: NetworkImage(
                                'https://randomuser.me/api/portraits/men/85.jpg') // Change this to NetworkImage if needed
                            ),
                        Positioned(
                          bottom: 1,
                          right: 1,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white, // Border color
                                  width: 4.0, // Border width
                                ),
                              ),
                              child: CircleAvatar(
                                backgroundColor: Color(0xff3D56A2),
                                radius: 18,
                                child: Icon(Icons.add_a_photo_outlined,
                                    color: Colors.white, size: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Editprofilescreencard(
                    icon: SvgPicture.asset(
                      color: Color(0xff9AA0A5),
                      'assets/user (1).svg',
                    ),
                    title: ' Full Name',
                  ),
                  Editprofilescreencard(
                    icon: SvgPicture.asset(
                      color: Color(0xff9AA0A5),
                      'assets/envelope.svg',
                    ),
                    title: ' Email',
                  ),
                  Editprofilescreencard(
                    icon: SvgPicture.asset(
                      color: Color(0xff9AA0A5),
                      'assets/envelope.svg',
                    ),
                    title: ' Contact Number',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffF6F7F9)),
                              borderRadius: BorderRadius.circular(8)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xff9DAAD0), width: 2)),
                          labelStyle:
                              GoogleFonts.workSans(color: Color(0xff9AA0A5)),
                          labelText: "Select City",
                          filled: true,
                          fillColor:
                              Color(0xffF6F7F9), // Light background color
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16.0),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8))),
                      dropdownColor: Color(0xffF6F7F9),
                      items: [
                        'Thiruvananthapuram',
                        'Kollam',
                        'Pathanamthitta',
                        'Alappuzha',
                        'Kottayam',
                        'Idukki',
                        'Ernakulam',
                        'Thrissur',
                        'Palakkad',
                        'Malappuram',
                        'Kozhikode',
                        'Wayanad',
                        'Kannur',
                        'Kasaragod'
                      ]
                          .map((city) =>
                              DropdownMenuItem(value: city, child: Text(city)))
                          .toList(),
                      onChanged: (value) {
                        print("Selected City: $value");
                      },
                    ),
                  ),
                  Padding(
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
                                enabled: false,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelStyle: GoogleFonts.workSans(
                                        color: Color(0xff9AA0A5),
                                        fontWeight: FontWeight.w500),
                                    labelText:
                                        '  670331 Morazha co-op Arts and science collage',
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xff9DAAD0),
                                            width: 2)),
                                    suffixIcon: Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: SvgPicture.asset(
                                          color: Color(0xff9AA0A5),
                                          'assets/envelope.svg'),
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
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size.fromWidth(300),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(12)),
                          backgroundColor: Color(0xff3C559F)),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w600, color: Colors.white),
                          'Save'),
                    ),
                  ),
                ],
              ),
            )));
  }
}
