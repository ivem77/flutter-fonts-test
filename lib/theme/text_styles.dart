import 'package:flutter/material.dart';
import 'dart:ui';

/// A collection of text styles used throughout the application.
/// These styles are based on the Satoshi font family and follow a consistent
/// typographic scale defined in the design system.
class AppTextStyles {
  static const String fontFamily = 'Satoshi';

  /// Heading Styles
  /// These styles use the Bold weight (700) and follow a modular scale
  /// with consistent line heights and letter spacing.

  /// H1 - The largest heading style
  /// Used for main headlines and hero sections
  static TextStyle h1 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.17,
    letterSpacing: 0,
  );

  static TextStyle h2 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 40,
    fontWeight: FontWeight.w700,
    height: 1.2,
    letterSpacing: 0,
  );

  static TextStyle h3 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.25,
    letterSpacing: 0,
  );

  static TextStyle h4 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0,
  );

  static TextStyle h5 = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.6,
    letterSpacing: 0,
  );

  /// Body Styles
  /// These styles come in regular (500) and bold (700) weights
  /// and are used for the main content of the application.

  /// XL - Large body text
  /// Used for important paragraphs or featured content
  static TextStyle xl = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
  );

  static TextStyle xlBold = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    height: 1.4,
    letterSpacing: 0,
  );

  static TextStyle big = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.5,
    letterSpacing: 0,
  );

  static TextStyle bigBold = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0,
  );

  /// Special Styles
  /// These styles have specific use cases and may include
  /// additional features like uppercase transformation or
  /// tabular number alignment.

  /// Tag style - Small, bold, and uppercase
  /// Used for labels and categories
  static TextStyle tag = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 11,
    fontWeight: FontWeight.w700,
    height: 1.45,
    letterSpacing: 0.5,
    textBaseline: TextBaseline.alphabetic,
  );

  static TextStyle overline = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.14,
    letterSpacing: 0,
    textBaseline: TextBaseline.alphabetic,
  );

  /// Number Styles
  /// These styles use tabular figures to ensure numbers
  /// align properly in tables and financial data.

  /// Big numbers with tabular figures
  /// Used for large numerical displays
  static TextStyle bigNums = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.6,
    letterSpacing: 0,
    fontFeatures: [FontFeature.tabularFigures()],
  );

  static TextStyle p = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
  );

  static TextStyle pBold = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 1.4,
    letterSpacing: 0,
  );

  static TextStyle pBoldNums = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 15,
    fontWeight: FontWeight.w700,
    height: 1.4,
    letterSpacing: 0,
    fontFeatures: [FontFeature.tabularFigures()],
  );

  static TextStyle small = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w500,
    height: 1.4,
    letterSpacing: 0,
  );

  static TextStyle smallBold = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w700,
    height: 1.33,
    letterSpacing: 0,
  );

  static TextStyle bigBoldNums = const TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    height: 1.5,
    letterSpacing: 0,
    fontFeatures: [FontFeature.tabularFigures()],
  );
}
