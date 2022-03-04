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
                    ContainerPage(),
                    SizedBox(
                      width: 24,
                    ),
                    ContainerPage(),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              )
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
