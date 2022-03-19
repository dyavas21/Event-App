import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff22252B),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/back.png',
                      width: 24,
                    ),
                  ),
                  Text(
                    'Event Details',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Image.asset(
                    'assets/more.png',
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(12),
              height: 390,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff262930),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/detail_card.png',
                      height: 366,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 12,
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/festival.png',
                        width: 86,
                        height: 27,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                'Midnight Bimosaurus Live',
                style: GoogleFonts.nunito(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Center(
              child: Text(
                'Jan 09 • Buitenzorg • 3am',
                style: GoogleFonts.nunito(
                  color: Color(0xffA9A9A9),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/frame.png',
                  width: 100,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  '999+ Group Music',
                  style: GoogleFonts.poppins(
                    color: Color(0xff3DD6AA),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Image.asset(
                'assets/line.png',
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Center(
              child: Text(
                'Description',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Center(
              child: Text(
                'A music festival is an event aimed at the live\nperformance of singing and instrument\nwhich usually varias cool',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Color(0xffA9A9A9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xff262930),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  'Buy Tickets',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff3DD6AA),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
