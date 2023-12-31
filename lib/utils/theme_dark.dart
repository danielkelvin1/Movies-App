import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

ThemeData darkAppTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      background: Color(0xff000000),
      primary: Color(0xff000000),
      secondary: Colors.blue,
      onBackground: Colors.white,
      surface: Color(0xff1c1c1c),
      onSurface: Colors.white,
    ),
    extensions: <ThemeExtension<AppColors>>[
      AppColors(
        colorTabBarView: const Color(0xff3a3f47),
        colorLabelTabBarView: Colors.white,
      ),
    ],
    textTheme: TextTheme(
      titleLarge: GoogleFonts.poppins().copyWith(fontSize: 18),
      titleMedium: GoogleFonts.poppins().copyWith(fontSize: 16),
      titleSmall: GoogleFonts.poppins().copyWith(fontSize: 14),
      bodyLarge: GoogleFonts.poppins().copyWith(fontSize: 13),
      bodyMedium: GoogleFonts.roboto().copyWith(fontSize: 12),
      bodySmall: GoogleFonts.montserrat().copyWith(fontSize: 12),
    ),
  );
}
