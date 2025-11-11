import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  final TextStyle sectionTitle = GoogleFonts.inter(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: const Color(0xFF191919),
  );

  final TextStyle viewAll = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF584CF4),
  );

  final TextStyle nearbyUserName = GoogleFonts.inter(
    fontSize: 13,
    color: Color(0xff666666),
  );

  final TextStyle dealProductName = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Color(0xff666666),
  );

  final TextStyle dealPrice = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xff222222),
  );

  final TextStyle dealOldPrice = GoogleFonts.inter(
    fontSize: 12,
    color: Color(0xff888888),
    decoration: TextDecoration.lineThrough,
  );

  final TextStyle dealDiscount = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: Color(0xff584CF4)
  );

  final TextStyle rating = GoogleFonts.inter(
    fontSize: 14,
    color:  Color(0xff888888),
  );

  final TextStyle eventTitle = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color:  Color(0xff666666),
  );

  final TextStyle serviceTitle = GoogleFonts.inter(
    fontSize: 16,
    fontWeight: FontWeight.w600,
      color:  Color(0xff222222),
  );
  final TextStyle navagationText = GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w400,
      color:  Color(0xff666666),
  );

  // New styles for Community Page
  final TextStyle tabBarLabel = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  final TextStyle leaderboardRank = GoogleFonts.inter(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  final TextStyle leaderboardName = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  final TextStyle leaderboardPoints = GoogleFonts.inter(
    fontSize: 12,
    color: Colors.white70,
  );
}
