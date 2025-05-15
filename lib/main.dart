import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'theme/number_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Typography Demo',
      theme: AppTheme.lightTheme,
      home: const TypographyDemo(),
    );
  }
}

class TypographyDemo extends StatelessWidget {
  const TypographyDemo({super.key});

  Widget _buildTextRow(
      String label, TextStyle labelStyle, String text, TextStyle textStyle,
      {bool forceUppercase = false}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label.toUpperCase(),
            style: labelStyle.copyWith(color: const Color(0xFF879BC5)),
          ),
          const SizedBox(height: 8),
          Text(
            forceUppercase ? text.toUpperCase() : text,
            style: textStyle,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final numberStyles = Theme.of(context).extension<NumberStyles>()!;
    const sampleText = 'Portfolio updates';
    const numbers = '0123456789';

    return Scaffold(
      backgroundColor: const Color(0xFF06050F),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 48),
            _buildTextRow('H1', textTheme.headlineLarge!, sampleText,
                textTheme.displayLarge!),
            _buildTextRow('H2', textTheme.headlineLarge!, sampleText,
                textTheme.displayMedium!),
            _buildTextRow('H3', textTheme.headlineLarge!, sampleText,
                textTheme.displaySmall!),
            _buildTextRow('H4', textTheme.headlineLarge!, sampleText,
                textTheme.headlineMedium!),
            _buildTextRow('H5', textTheme.headlineLarge!, sampleText,
                textTheme.headlineSmall!),
            Divider(color: Colors.white.withOpacity(0.1), height: 48),
            _buildTextRow('Overline', textTheme.headlineLarge!, sampleText,
                textTheme.headlineLarge!,
                forceUppercase: true),
            _buildTextRow('Tag', textTheme.headlineLarge!, sampleText,
                textTheme.titleSmall!,
                forceUppercase: true),
            Divider(color: Colors.white.withOpacity(0.1), height: 48),
            _buildTextRow('XL', textTheme.headlineLarge!, sampleText,
                textTheme.titleLarge!),
            _buildTextRow('XL Bold', textTheme.headlineLarge!, sampleText,
                textTheme.titleMedium!),
            _buildTextRow('Big', textTheme.headlineLarge!, sampleText,
                textTheme.bodyLarge!),
            _buildTextRow('Big Bold', textTheme.headlineLarge!, sampleText,
                textTheme.labelLarge!),
            _buildTextRow('p', textTheme.headlineLarge!, sampleText,
                textTheme.bodyMedium!),
            _buildTextRow('p Bold', textTheme.headlineLarge!, sampleText,
                textTheme.labelMedium!),
            _buildTextRow('Small', textTheme.headlineLarge!, sampleText,
                textTheme.bodySmall!),
            _buildTextRow('Small Bold', textTheme.headlineLarge!, sampleText,
                textTheme.labelSmall!),
            Divider(color: Colors.white.withOpacity(0.1), height: 48),
            _buildTextRow('Big nums', textTheme.headlineLarge!, numbers,
                numberStyles.bigNums),
            _buildTextRow('p Bold nums', textTheme.headlineLarge!, numbers,
                numberStyles.pBoldNums),
            _buildTextRow('Big Bold nums', textTheme.headlineLarge!, numbers,
                numberStyles.bigBoldNums),
          ],
        ),
      ),
    );
  }
}
