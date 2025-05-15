import 'package:flutter/material.dart';
import 'text_styles.dart';
import 'number_styles.dart';

class AppTheme {
  static ThemeData get lightTheme {
    const textColor = Colors.white;

    TextStyle _withColor(TextStyle style) {
      return style.copyWith(color: textColor);
    }

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF06050F), // From Figma background color
        brightness: Brightness.dark, // Changed to dark mode
      ),
      textTheme: TextTheme(
        // Headings
        displayLarge: _withColor(AppTextStyles.h1),
        displayMedium: _withColor(AppTextStyles.h2),
        displaySmall: _withColor(AppTextStyles.h3),
        headlineMedium: _withColor(AppTextStyles.h4),
        headlineSmall: _withColor(AppTextStyles.h5),

        // Body text
        titleLarge: _withColor(AppTextStyles.xl),
        titleMedium: _withColor(AppTextStyles.xlBold),
        bodyLarge: _withColor(AppTextStyles.big),
        bodyMedium: _withColor(AppTextStyles.p),
        bodySmall: _withColor(AppTextStyles.small),

        // Special styles
        labelLarge: _withColor(AppTextStyles.bigBold),
        labelMedium: _withColor(AppTextStyles.pBold),
        labelSmall: _withColor(AppTextStyles.smallBold),

        // Overline and tag
        titleSmall: _withColor(AppTextStyles.tag),
        headlineLarge: _withColor(AppTextStyles.overline),
      ),
      extensions: [
        NumberStyles(
          bigNums: _withColor(AppTextStyles.bigNums),
          pBoldNums: _withColor(AppTextStyles.pBoldNums),
          bigBoldNums: _withColor(AppTextStyles.bigBoldNums),
        ),
      ],
      fontFamily: AppTextStyles.fontFamily,
    );
  }
}
