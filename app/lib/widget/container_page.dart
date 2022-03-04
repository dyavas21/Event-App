import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/card1.png',
            width: 260,
            height: 320,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24,
              top: 24,
              bottom: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/festival.png',
                  width: 86,
                  height: 27,
                ),
                Spacer(),
                Text(
                  'Midnight Bimosaurus Live',
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Jan 09 • Buitenzorg',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Color(0xffA9A9A9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
