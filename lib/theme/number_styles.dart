import 'package:flutter/material.dart';

@immutable
class NumberStyles extends ThemeExtension<NumberStyles> {
  const NumberStyles({
    required this.bigNums,
    required this.pBoldNums,
    required this.bigBoldNums,
  });

  final TextStyle bigNums;
  final TextStyle pBoldNums;
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
