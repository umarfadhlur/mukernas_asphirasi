import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukernas_asphirasi/screens/asphirasi_main_menu.dart';

class AsphirasiMukernasScreen extends StatelessWidget {
  const AsphirasiMukernasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND IMAGE (background2.png)
          Positioned.fill(
            child: Image.asset(
              "assets/images/background2.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),

          // Optional subtle overlay to improve text contrast
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.18),
            ),
          ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 60.h),

                // LOGO ASPHIRASI
                Center(
                  child: SizedBox(
                    height: 480.h,
                    child: Image.asset(
                      "assets/images/asphirasi_logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 18.h),

                // MUKERNAS IMAGE TITLE
                Center(
                  child: SizedBox(
                    height: 170.h,
                    child: Image.asset(
                      "assets/images/mukernas2_logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: 18.h),

                // Deskripsi kecil (tetap pakai text agar responsive)
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 48.w),
                  child: Text(
                    "Meneguhkan Langkah dan Menyongsong Arah Baru:\n"
                    "Penguatan Fondasi dan Strategi ASPHIRASI di Tengah\n"
                    "Dinamika Tantangan Internal dan Eksternal",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.kufam(
                      fontSize: 36.sp,
                      color: Colors.white,
                      height: 1.45,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                SizedBox(height: 24.h),

                // Lokasi + tanggal

                const Spacer(),
                SizedBox(
                    height: 120.h), // ruang bawah untuk posisi tombol image
              ],
            ),
          ),
          Positioned(
            right: 20.w,
            bottom: 700.h,
            child: GestureDetector(
                onTap: () {
                  // TODO: tambahkan aksi navigasi
                },
                child: Column(
                  children: [
                    Text(
                      "Pullman Central Park",
                      style: GoogleFonts.kufam(
                        fontSize: 44.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "Jakarta, 24 - 25 November 2025",
                      style: GoogleFonts.kufam(
                        fontSize: 36.sp,
                        color: Colors.white.withOpacity(0.92),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                )),
          ),
          // NEXT button as image (positioned bottom-right)
          Positioned(
            right: 20.w,
            bottom: 40.h,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => AsphirasiMainMenu()),
                  ),
                );
              },
              child: Image.asset(
                "assets/images/next_btn.png",
                height: 300.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
