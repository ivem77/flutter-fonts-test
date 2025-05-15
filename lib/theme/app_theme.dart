import 'package:flutter/material.dart';
import 'text_styles.dart';
import 'number_styles.dart';

/// The main theme configuration for the application.
/// This class provides a dark theme that uses the Satoshi font family
/// and implements a complete typography system with proper text colors
/// and number styles.
class AppTheme {
  /// Returns the light theme configuration with dark mode colors.
  /// All text styles are properly mapped to Material Theme text styles
  /// and include the correct text color.
  static ThemeData get lightTheme {
    const textColor = Colors.white;

    TextStyle withColor(TextStyle style) {
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
        displayLarge: withColor(AppTextStyles.h1),
        displayMedium: withColor(AppTextStyles.h2),
        displaySmall: withColor(AppTextStyles.h3),
        headlineMedium: withColor(AppTextStyles.h4),
        headlineSmall: withColor(AppTextStyles.h5),

        // Body text
        titleLarge: withColor(AppTextStyles.xl),
        titleMedium: withColor(AppTextStyles.xlBold),
        bodyLarge: withColor(AppTextStyles.big),
        bodyMedium: withColor(AppTextStyles.p),
        bodySmall: withColor(AppTextStyles.small),

        // Special styles
        labelLarge: withColor(AppTextStyles.bigBold),
        labelMedium: withColor(AppTextStyles.pBold),
        labelSmall: withColor(AppTextStyles.smallBold),

        // Overline and tag
        titleSmall: withColor(AppTextStyles.tag),
        headlineLarge: withColor(AppTextStyles.overline),
      ),
      extensions: [
        NumberStyles(
          bigNums: withColor(AppTextStyles.bigNums),
          pBoldNums: withColor(AppTextStyles.pBoldNums),
          bigBoldNums: withColor(AppTextStyles.bigBoldNums),
        ),
      ],
      fontFamily: AppTextStyles.fontFamily,
    );
  }
}
