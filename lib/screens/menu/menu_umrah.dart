import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukernas_asphirasi/screens/asphirasi_home_screen.dart';

class MenuUmrah extends StatefulWidget {
  const MenuUmrah({super.key});

  @override
  State<MenuUmrah> createState() => _MenuUmrahState();
}

class _MenuUmrahState extends State<MenuUmrah> {
  int _currentIndex = 0;

  final List<String> _images = [
    "assets/materi/umrah1.jpg",
    "assets/materi/umrah2.jpg",
    "assets/materi/umrah3.jpg",
    "assets/materi/umrah4.jpg",
  ];

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
  }

  void _prevImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + _images.length) % _images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ====================================================
          // BACKGROUND FULLSCREEN
          // ====================================================
          SizedBox(
            width: 1080.w,
            height: 1920.h,
            child: Image.asset(
              "assets/images/background3.png",
              fit: BoxFit.cover,
            ),
          ),

          // ====================================================
          // MAIN CONTENT
          // ====================================================
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),

                // LOGO MUKERNAS (TITLE)
                Center(
                  child: SizedBox(
                    height: 160.h,
                    child: Image.asset(
                      "assets/images/mukernas2_logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 200.h),

                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // LEFT BUTTON
                      GestureDetector(
                        onTap: _prevImage,
                        child: Image.asset(
                          "assets/images/left_btn.png",
                          height: 90.h,
                        ),
                      ),

                      SizedBox(width: 40.w),

                      // MAIN IMAGE
                      Container(
                        height: 950.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.r),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              blurRadius: 12,
                              offset: const Offset(0, 6),
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.r),
                          child: Image.asset(
                            _images[_currentIndex],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      SizedBox(width: 40.w),

                      // RIGHT BUTTON
                      GestureDetector(
                        onTap: _nextImage,
                        child: Image.asset(
                          "assets/images/right_btn.png",
                          height: 90.h,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 40.h),
              ],
            ),
          ),

          // ====================================================
          // LOGO ASPHIRASI (BOTTOM LEFT)
          // ====================================================
          Positioned(
            left: -70.w,
            top: 300.h,
            child: Padding(
              padding: EdgeInsets.only(top: 40.h),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 60.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(60.r),
                  border: Border.all(
                    color: Colors.amber.shade400,
                    width: 6.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Text(
                  "     UMRAH                 ",
                  style: GoogleFonts.kufam(
                    fontSize: 46.sp,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF8B002B),
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),

          // ====================================================
          // LOGO ASPHIRASI (BOTTOM LEFT)
          // ====================================================
          Positioned(
            left: 75.w,
            bottom: 75.h,
            child: SizedBox(
              height: 350.h,
              child: Image.asset(
                "assets/images/asphirasi_logo.png",
                fit: BoxFit.contain,
              ),
            ),
          ),

          // ====================================================
          // BACK BUTTON & HOME BUTTON (BOTTOM RIGHT)
          // ====================================================
          Positioned(
            right: 75.w,
            bottom: 150.h,
            child: Row(
              children: [
                // BACK BUTTON
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 40.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.35),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/back_btn.png",
                      height: 80.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                // HOME BUTTON
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AsphirasiHomeScreen(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.35),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/home_btn.png",
                      height: 120.h,
                      fit: BoxFit.contain,
                    ),
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
