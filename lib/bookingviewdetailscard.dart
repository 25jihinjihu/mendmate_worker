import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mendmate_worker/checkstatuspage.dart';

class Bookingscreenviewdetailscreen extends StatelessWidget {
  final String status;
  final Color statuscolor;
  final String totalprice;
  final String paymentmethod;

  final String serviceimg;
  final String date;
  final String time;
  final String servicename;
  final String usermail;
  final String userlocation;
  final String username;
  final String bookingid;
  final String userimg;

  const Bookingscreenviewdetailscreen({
    super.key,
    required this.status,
    required this.serviceimg,
    required this.date,
    required this.time,
    required this.servicename,
    required this.statuscolor,
    required this.totalprice,
    required this.usermail,
    required this.userlocation,
    required this.username,
    required this.bookingid,
    required this.userimg,
    required this.paymentmethod,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(color: Colors.white, Icons.chevron_left)),
        titleSpacing: -15,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 30,
                child: Text(
                  status,
                  style: GoogleFonts.workSans(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 290,
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20)),
                      ),
                      builder: (context) => Checkstatuspage(
                            bookingid: bookingid,
                            newbookingtime: time,
                            newbookingdate: date,
                            acceptbookingtime: '7.30 AM',
                            acceptbookingdate: 'Feb 7',
                            bookingcompletedtime: '10.30AM',
                            bookingcompleteddate: 'Feb 9',
                            status: status,
                          ));
                },
                child: Text(
                  'Check Status',
                  style: GoogleFonts.workSans(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xff3D56A2),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Booking ID & Service Info
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: NeverScrollableScrollPhysics(),
                  child: Row(
                    children: [
                      Text(
                        'Booking ID:',
                        style: GoogleFonts.workSans(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff6C757D)),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 250,
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
                  padding: const EdgeInsets.symmetric(vertical: 15),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            servicename,
                            style: GoogleFonts.workSans(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Date :  ',
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text(date,
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Color(0xff6C757D),
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Time :  ',
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500)),
                              Text(time,
                                  style: GoogleFonts.workSans(
                                      fontSize: 16,
                                      color: Color(0xff6C757D),
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 300,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          serviceimg, // Replace with actual image URL
                          width: 100,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  'About User',
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),

                // Customer Info Card
                Card(
                  color: Color(0xffF6F7F9),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(
                                  userimg), // Replace with actual user image
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    username,
                                    style: GoogleFonts.workSans(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/envelope.svg',
                                        height: 13,
                                        color: Color(0xff535565),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(usermail,
                                            style: GoogleFonts.workSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff90989D))),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/marker.svg',
                                        height: 14,
                                        color: Color(0xff535565),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Text(userlocation,
                                            style: GoogleFonts.workSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff90989D))),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton.icon(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/Calling.svg',
                                color: Colors.white,
                              ),
                              label: Text(
                                "Call",
                                style: GoogleFonts.workSans(
                                    fontWeight: FontWeight.w500),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(130, 35),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                backgroundColor: Color(0xff5F60B9),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 12),
                              ),
                            ),
                            OutlinedButton.icon(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/Chat.svg',
                                color: Colors.black,
                              ),
                              label: Text("Chat",
                                  style: TextStyle(color: Colors.black)),
                              style: OutlinedButton.styleFrom(
                                  fixedSize: Size(130, 35),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  backgroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 12),
                                  side: BorderSide(color: Color(0xffF6F7F9))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Payment Details',
                  style: GoogleFonts.workSans(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),

                // Customer Info Card
                Card(
                  color: Color(0xffF6F7F9),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ID',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text('#',
                                      style: GoogleFonts.workSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff5F60B9))),
                                  Text(bookingid,
                                      style: GoogleFonts.workSans(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff5F60B9)))
                                ],
                              ),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xffEBEBEB),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Method',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              paymentmethod,
                              style: GoogleFonts.workSans(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff979DA4)),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xffEBEBEB),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Status',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Text(status,
                                style: GoogleFonts.workSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: statuscolor))
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0xffEBEBEB),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: GoogleFonts.workSans(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.currency_rupee,
                                    size: 17,
                                  ),
                                  Text(
                                    totalprice,
                                    style: GoogleFonts.workSans(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xff979DA4)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Call & Chat Buttons
              ],
            ),
          ),
        ),
      ),
    );
  }
}
