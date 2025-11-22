import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukernas_asphirasi/screens/asphirasi_home_screen.dart';

class MenuAsphirasi extends StatefulWidget {
  const MenuAsphirasi({super.key});

  @override
  State<MenuAsphirasi> createState() => _MenuAsphirasiState();
}

class _MenuAsphirasiState extends State<MenuAsphirasi> {
  int _currentPage = 0;

  /// 2 gambar per halaman
  final List<List<String>> _pages = [
    [
      "assets/materi/asphirasi1.png",
      "assets/materi/asphirasi2.png",
    ],
    [
      "assets/materi/asphirasi3.png",
      "assets/materi/asphirasi4.png",
    ],
    [
      "assets/materi/asphirasi5.png",
      "assets/materi/asphirasi6.png",
    ],
    [
      "assets/materi/asphirasi7.png",
      "assets/materi/asphirasi8.png",
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

  @override
  Widget build(BuildContext context) {
    final imgs = _pages[_currentPage];

    return Scaffold(
      body: Stack(
        children: [
          // background
          SizedBox(
            width: 1080.w,
            height: 1920.h,
            child: Image.asset(
              "assets/images/background3.png",
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            child: Column(
              children: [
                SizedBox(height: 100.h),
                // Logo Mukernas
                SizedBox(
                  height: 160.h,
                  child: Image.asset("assets/images/mukernas2_logo.png"),
                ),
                SizedBox(height: 120.h),

                // ===========================
                //   ROW: left button - images - right button
                // ===========================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ===========================
                    // TWO IMAGES STACKED
                    // ===========================
                    Column(
                      children: [
                        getImageBox(imgs[0]),
                        SizedBox(height: 40.h),
                        getImageBox(imgs[1]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            right: 50.w,
            top: 310.h,
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
          Positioned(
            left: -70.w,
            top: 300.h,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 60.w),
              decoration: BoxDecoration(
                color: const Color(0xFF8B002B),
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
                "     ASPHIRASI                 ",
                style: GoogleFonts.kufam(
                  fontSize: 46.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Logo bottom-left
          Positioned(
            left: 75.w,
            bottom: 75.h,
            child: SizedBox(
              height: 350.h,
              child: Image.asset("assets/images/asphirasi_logo.png"),
            ),
          ),

          // Buttons bottom-right
          Positioned(
            right: 75.w,
            bottom: 150.h,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 40.w),
                    child: Image.asset(
                      "assets/images/back_btn.png",
                      height: 80.h,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AsphirasiHomeScreen()),
                      (route) => false,
                    );
                  },
                  child: Image.asset(
                    "assets/images/home_btn.png",
                    height: 120.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getImageBox(String asset) {
    if (asset.contains("asphirasi1")) {
      return _imageBox1(asset);
    } else if (asset.contains("asphirasi3")) {
      return _imageBox3(asset);
    } else {
      return _imageBox2(asset);
    }
  }

  Widget _imageBox1(String asset) {
    return Container(
      width: 600.w,
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
          asset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _imageBox2(String asset) {
    return Container(
      width: 900.w,
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
          asset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _imageBox3(String asset) {
    return Container(
      width: 700.w,
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
          asset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
