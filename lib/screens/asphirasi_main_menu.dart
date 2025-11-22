import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukernas_asphirasi/screens/asphirasi_home_screen.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_asphirasi.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_dpd.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_gallery.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_haji.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_organisasi.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_rundown.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_sponsor.dart';
import 'package:mukernas_asphirasi/screens/menu/menu_umrah.dart';

class AsphirasiMainMenu extends StatelessWidget {
  AsphirasiMainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ===========================
          // BACKGROUND FULLSCREEN
          // ===========================
          SizedBox(
            width: 1080.w,
            height: 1920.h,
            child: Image.asset(
              "assets/images/background3.png",
              fit: BoxFit.cover,
            ),
          ),

          // ===========================
          // MAIN CONTENT
          // ===========================
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 100.h),

                // LOGO MUKERNAS
                SizedBox(
                  height: 160.h,
                  child: Image.asset(
                    "assets/images/mukernas2_logo.png",
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 150.h),

                // MENU GRID
                Expanded(
                  child: _menuGrid(context),
                ),

                SizedBox(height: 40.h),
              ],
            ),
          ),

          // ===========================
          // LOGO ASPHIRASI (BOTTOM LEFT)
          // ===========================
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

          // ===========================
          // HOME BUTTON (BOTTOM RIGHT)
          // ===========================
          Positioned(
            right: 100.w,
            bottom: 150.h,
            child: GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AsphirasiHomeScreen(),
                    ),
                    (route) => false);
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
          ),
        ],
      ),
    );
  }

  // ==========================================================
  // MANUAL 4-ROW MENU (2 MENU PER ROW)
  // ==========================================================
  Widget _menuGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 80.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Row 1 — RUNDOWN & ASPHIRASI
          _menuRow(context, "RUNDOWN", "ASPHIRASI"),

          SizedBox(height: 100.h),

          // Row 2 — HAJI & UMRAH
          _menuWor(context, "HAJI", "UMRAH"),

          SizedBox(height: 100.h),

          // Row 3 — DPD & ORGANISASI
          _menuRow(context, "DPD", "ORGANISASI"),

          SizedBox(height: 100.h),

          // Row 4 — SPONSOR & GALLERY
          _menuWor(context, "SPONSOR", "GALLERY"),
        ],
      ),
    );
  }

  // ==========================================================
  // REUSABLE ROW WITH 2 MENU BUTTONS
  // ==========================================================
  Widget _menuRow(BuildContext context, String left, String right) {
    return Row(
      children: [
        Expanded(
            child: _menuButton(left,
                isLeft: true, onTap: () => _navigateTo(context, left))),
        SizedBox(width: 40.w),
        Expanded(
            child: _menuButton(right,
                isLeft: false, onTap: () => _navigateTo(context, right))),
      ],
    );
  }

  Widget _menuWor(BuildContext context, String left, String right) {
    return Row(
      children: [
        Expanded(
            child: _menuButton(left,
                isLeft: false, onTap: () => _navigateTo(context, left))),
        SizedBox(width: 40.w),
        Expanded(
            child: _menuButton(right,
                isLeft: true, onTap: () => _navigateTo(context, right))),
      ],
    );
  }

  // ==========================================================
  // NAVIGATION HANDLER
  // ==========================================================
  final Map<String, Widget> _menuRoutes = {
    "RUNDOWN": const MenuRundown(),
    "ASPHIRASI": const MenuAsphirasi(),
    "HAJI": const MenuHaji(),
    "UMRAH": const MenuUmrah(),
    "DPD": const MenuDpd(),
    "ORGANISASI": const MenuOrganisasi(),
    "SPONSOR": const MenuSponsor(),
    "GALLERY": const MenuGallery(),
  };

  void _navigateTo(BuildContext context, String menuName) {
    if (_menuRoutes.containsKey(menuName)) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => _menuRoutes[menuName]!),
      );
    } else {
      print("Menu not implemented: $menuName");
    }
  }

  // ==========================================================
  // MENU BUTTON STYLE
  // ==========================================================
  Widget _menuButton(String text, {required bool isLeft, VoidCallback? onTap}) {
    const marun = Color(0xFF8B002B);
    final gold = Colors.amber.shade400;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 8.w),
        decoration: BoxDecoration(
          color: isLeft ? Colors.white : marun,
          borderRadius: BorderRadius.circular(60.r),
          border: Border.all(color: gold, width: 6.w),
          boxShadow: [
            BoxShadow(
              color: isLeft ? gold.withOpacity(0.12) : marun.withOpacity(0.18),
              blurRadius: 8,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: GoogleFonts.kufam(
            fontSize: 42.sp,
            fontWeight: FontWeight.w700,
            color: isLeft ? marun : Colors.white,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
