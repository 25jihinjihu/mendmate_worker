import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Checkstatuspage extends StatelessWidget {
  final String bookingid;
  final String newbookingtime;
  final String newbookingdate;
  final String acceptbookingtime;
  final String acceptbookingdate;
  final String bookingcompletedtime;
  final String bookingcompleteddate;
  final String status;

  const Checkstatuspage(
      {super.key,
      required this.bookingid,
      required this.newbookingtime,
      required this.newbookingdate,
      required this.acceptbookingtime,
      required this.acceptbookingdate,
      required this.bookingcompletedtime,
      required this.bookingcompleteddate,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.circular(12)),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 370,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            color: Color(0xffEBEBEB),
            'assets/horizontal-rule.svg',
            width: 40,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            child: Row(
              children: [
                Text("Booking History",
                    style: GoogleFonts.workSans(
                        fontSize: 18, fontWeight: FontWeight.w500)),
                SizedBox(
                  width: 70,
                ),
                Text('ID : #',
                    style: GoogleFonts.workSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5F60B9))),
                Text(bookingid,
                    style: GoogleFonts.workSans(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff5F60B9)))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Divider(
              thickness: 1,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            child: Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50, top: 15),
                      child: Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            newbookingtime,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff9AA0A6),
                                fontSize: 16),
                          ),
                          Text(
                            newbookingtime,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 14),
                          )
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            acceptbookingtime,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff9AA0A6),
                                fontSize: 16),
                          ),
                          Text(
                            acceptbookingdate,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 14),
                          )
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookingcompletedtime,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff9AA0A6),
                                fontSize: 16),
                          ),
                          Text(
                            bookingcompleteddate,
                            style: GoogleFonts.workSans(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 14),
                          )
                        ],
                      )),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    alignment: Alignment.topCenter,
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/dot1.svg',
                          color: Color(0xffEA2F2F),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SvgPicture.asset(
                          'assets/Line 1.svg',
                          color: Color(0xffEA2F2F),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SvgPicture.asset(
                          'assets/dot1.svg',
                          color: Color(0xff00968A),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SvgPicture.asset(
                          'assets/Line 1.svg',
                          color: status == "Completed"
                              ? Color(0xff00968A)
                              : Color(0xffB8BBBE),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SvgPicture.asset(
                          'assets/dot1.svg',
                          color: status == "Completed"
                              ? Color(0xffFA6822)
                              : Color(0xffB8BBBE),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30, top: 18),
                      child: Container(
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'New Booking',
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                              Text(
                                'New Booking Added By The Customer',
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9AA0A6),
                                    fontSize: 13),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Container(
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Accept Booking',
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                              Text(
                                'Status changed From pending to accept',
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9AA0A6),
                                    fontSize: 13),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: Container(
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Service Completed',
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                              Text(
                                'Booking has Completed by the Worker',
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff9AA0A6),
                                    fontSize: 13),
                              ),
                            ],
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
