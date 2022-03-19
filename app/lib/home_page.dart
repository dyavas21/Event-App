import 'package:app/detail_page.dart';
import 'package:app/widget/container_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff22252B),
          body: ListView(
            children: [
              Container(
                padding: EdgeInsets.all(24),
                height: 75,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff262930),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Heavent',
                      style: GoogleFonts.nunito(
                        color: Color(0xff3DD6AA),
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/menu.png',
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    left: 12,
                    top: 12,
                    bottom: 12,
                  ),
                  height: 88,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff262930),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image1.png',
                        width: 64,
                        height: 64,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Close Event Reminder',
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Color(0xff676767),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Midnight EDM Festival',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  children: [
                    Text(
                      'Recommended Events',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xff3DD6AA),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 24),
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ),
                        );
                      },
                      child: ContainerPage(
                        imageUrl: 'assets/card1.png',
                        title: 'Midnight Bimosaurus Live',
                        desc: 'Jan 09 • Buitenzorg',
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    ContainerPage(
                      imageUrl: 'assets/card2.png',
                      title: 'Midnight Impact Music',
                      desc: 'Jan 12 • Batavia',
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New For You',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'View all',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: Color(0xff3DD6AA),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                ),
                child: Container(
                  height: 227,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/uiux.png',
                        height: 227,
                        width: MediaQuery.of(context).size.width,
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
                            Container(
                              margin: EdgeInsets.only(left: 16),
                              child: Text(
                                'Education',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Mastering UI/UX Design',
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Aug 22 • Bandung',
                              style: GoogleFonts.poppins(
                                color: Color(0xffA9A9A9),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // floatingActionButton: Container(
          //   padding: EdgeInsets.only(
          //     left: 24,
          //     right: 24,
          //     bottom: 24,
          //     top: 24,
          //   ),
          //   height: 72,
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //     color: Colors.red,
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Image.asset(
          //         'assets/home.png',
          //         width: 24,
          //         height: 24,
          //       ),
          //       Image.asset(
          //         'assets/home.png',
          //         width: 24,
          //         height: 24,
          //       ),
          //       Image.asset(
          //         'assets/home.png',
          //         width: 24,
          //         height: 24,
          //       ),
          //       Image.asset(
          //         'assets/home.png',
          //         width: 24,
          //         height: 24,
          //       ),
          //     ],
          //   ),
          // ),

          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 24,
            elevation: 15,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Color(0xff22252B),
                icon: Image.asset(
                  'assets/home.png',
                  width: 24,
                  height: 24,
                ),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/search.png',
                  width: 24,
                  height: 24,
                ),
                label: 'search',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/notif.png',
                  width: 24,
                  height: 24,
                ),
                label: 'notif',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/profile.png',
                  width: 24,
                  height: 24,
                ),
                label: 'profile',
              ),
            ],
          )),
    );
  }
}
