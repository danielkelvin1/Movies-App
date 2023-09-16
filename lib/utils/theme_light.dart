import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'color.dart';

ThemeData lightAppTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      background: Color.fromARGB(255, 243, 242, 242),
      primary: Color(0xff000000),
      secondary: Colors.blue,
      onBackground: Colors.black,
      surface: Color.fromARGB(255, 224, 221, 221),
      onSurface: Colors.black,
    ),
    extensions: <ThemeExtension<AppColors>>[
      AppColors(
        colorTabBarView: const Color(0xff000000),
        colorLabelTabBarView: Colors.black,
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
