import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukernas_asphirasi/screens/asphirasi_home_screen.dart';

class MenuGallery extends StatefulWidget {
  const MenuGallery({super.key});

  @override
  State<MenuGallery> createState() => _MenuGalleryState();
}

class _MenuGalleryState extends State<MenuGallery> {
  int _currentPage = 0;

  /// 2 gambar per halaman
  final List<List<String>> _pages = [
    [
      "assets/materi/gallery0.png",
    ],
    [
      "assets/materi/gallery1.png",
      "assets/materi/gallery2.png",
    ],
    [
      "assets/materi/gallery3.png",
      "assets/materi/gallery4.png",
    ],
    [
      "assets/materi/gallery5.png",
      "assets/materi/gallery6.png",
    ],
  ];

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      setState(() {
        _currentPage++;
      });
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
      });
    }
  }

  Widget getImageBox(String assetPath) {
    return SizedBox(
      width: 975.w,
      child: Image.asset(
        assetPath,
        fit: BoxFit.contain,
      ),
    );
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

                SizedBox(height: 175.h),
                // show two images from the current page
                Builder(
                  builder: (context) {
                    final imgs = _pages[_currentPage];

                    if (imgs.length == 1) {
                      // PAGE DENGAN 1 GAMBAR (gallery0)
                      return getImageBox(imgs[0]);
                    } else {
                      // PAGE DENGAN 2 GAMBAR
                      return Column(
                        children: [
                          getImageBox(imgs[0]),
                          SizedBox(height: 40.h),
                          getImageBox(imgs[1]),
                        ],
                      );
                    }
                  },
                ),

                SizedBox(height: 40.h),
              ],
            ),
          ),

          Positioned(
            right: 50.w,
            top: 350.h,
            child: Row(
              children: [
                // LEFT BUTTON
                GestureDetector(
                  onTap: _prevPage,
                  child: Image.asset(
                    "assets/images/left_btn.png",
                    height: 90.h,
                  ),
                ),
                SizedBox(width: 40.w),
                // RIGHT BUTTON
                GestureDetector(
                  onTap: _nextPage,
                  child: Image.asset(
                    "assets/images/right_btn.png",
                    height: 90.h,
                  ),
                ),
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
                  "     GALLERY                 ",
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
              height: 200.h,
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
