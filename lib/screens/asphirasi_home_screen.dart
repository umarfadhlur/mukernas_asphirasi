import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'asphirasi_mukernas_screen.dart';

class AsphirasiHomeScreen extends StatelessWidget {
  const AsphirasiHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
          SizedBox(
            width: 1080.w,
            height: 1920.h,
            child: Image.asset(
              "assets/images/background1.png",
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
          ),

          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 140.h),

                // LOGO ASPHIRASI
                Center(
                  child: SizedBox(
                    height: 400.h,
                    child: Image.asset(
                      "assets/images/asphirasi_logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 80.h),

                // TITLE MUKERNAS
                Center(
                  child: SizedBox(
                    height: 160.h,
                    child: Image.asset(
                      "assets/images/mukernas2_logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 120.h),

                // CLICK HERE BUTTON
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const AsphirasiMukernasScreen(),
                          ),
                          (route) => false);
                    },
                    child: SizedBox(
                      height: 160.h,
                      child: Image.asset(
                        "assets/images/click_here.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                // HOME BUTTON
                // Center(
                //   child: GestureDetector(
                //     onTap: () {},
                //     child: SizedBox(
                //       height: 170.h,
                //       child: Image.asset(
                //         "assets/images/home_btn.png",
                //         fit: BoxFit.contain,
                //       ),
                //     ),
                //   ),
                // ),

                SizedBox(height: 360.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
