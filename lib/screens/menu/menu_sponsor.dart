import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukernas_asphirasi/screens/asphirasi_home_screen.dart';
import 'package:mukernas_asphirasi/screens/sponsor/alfiyah_menu.dart';
import 'package:mukernas_asphirasi/screens/sponsor/bsi_menu.dart';
import 'package:mukernas_asphirasi/screens/sponsor/dsl_menu.dart';
import 'package:mukernas_asphirasi/screens/sponsor/greyfurt_menu.dart';
import 'package:mukernas_asphirasi/screens/sponsor/koperindo_menu.dart';
import 'package:mukernas_asphirasi/screens/sponsor/zurich_menu.dart';

class MenuSponsor extends StatelessWidget {
  const MenuSponsor({super.key});

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

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 200.h,
                      child: Image.asset(
                        "assets/materi/sponsor1.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 200.h,
                      child: Image.asset(
                        "assets/materi/sponsor2.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor3.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const ZurichMenu()),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 150.h,
                        child: Image.asset(
                          "assets/materi/sponsor4.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const BsiMenu()),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 150.h,
                        child: Image.asset(
                          "assets/materi/sponsor5.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const GreyfurtMenu()),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 150.h,
                        child: Image.asset(
                          "assets/materi/sponsor6.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor7.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor8.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor9.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor10.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const AlfiyahMenu()),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 150.h,
                        child: Image.asset(
                          "assets/materi/sponsor11.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor12.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const KoperindoMenu()),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 150.h,
                        child: Image.asset(
                          "assets/materi/sponsor13.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => const DslMenu()),
                          ),
                        );
                      },
                      child: SizedBox(
                        height: 150.h,
                        child: Image.asset(
                          "assets/materi/sponsor14.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 150.h,
                      child: Image.asset(
                        "assets/materi/sponsor15.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 40.h),
              ],
            ),
          ),

          // ====================================================
          // LOGO SPONSOR (BOTTOM LEFT)
          // ====================================================
          Positioned(
            left: -70.w,
            top: 300.h,
            child: Padding(
              padding: EdgeInsets.only(top: 40.h),
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
                  "     SPONSOR                 ",
                  style: GoogleFonts.kufam(
                    fontSize: 46.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ),
          ),

          // ====================================================
          // LOGO SPONSOR (BOTTOM LEFT)
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
