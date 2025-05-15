import 'package:flutter/material.dart';

/// A theme extension that provides text styles specifically for numbers
/// with tabular figures enabled. This ensures that numbers align properly
/// in tables, financial data, and other numerical displays.
@immutable
class NumberStyles extends ThemeExtension<NumberStyles> {
  const NumberStyles({
    required this.bigNums,
    required this.pBoldNums,
    required this.bigBoldNums,
  });

  /// Large numbers with tabular figures
  /// Font size: 20, Weight: Bold (700)
  final TextStyle bigNums;

  /// Paragraph-sized bold numbers with tabular figures
  /// Font size: 15, Weight: Bold (700)
  final TextStyle pBoldNums;

  /// Large bold numbers with tabular figures
  /// Font size: 16, Weight: Bold (700)
  final TextStyle bigBoldNums;

  @override
  NumberStyles copyWith({
    TextStyle? bigNums,
    TextStyle? pBoldNums,
    TextStyle? bigBoldNums,
  }) {
    return NumberStyles(
      bigNums: bigNums ?? this.bigNums,
      pBoldNums: pBoldNums ?? this.pBoldNums,
      bigBoldNums: bigBoldNums ?? this.bigBoldNums,
    );
  }

  @override
  NumberStyles lerp(ThemeExtension<NumberStyles>? other, double t) {
    if (other is! NumberStyles) {
      return this;
    }
    return NumberStyles(
      bigNums: TextStyle.lerp(bigNums, other.bigNums, t)!,
      pBoldNums: TextStyle.lerp(pBoldNums, other.pBoldNums, t)!,
      bigBoldNums: TextStyle.lerp(bigBoldNums, other.bigBoldNums, t)!,
    );
  }
}
