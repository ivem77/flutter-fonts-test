import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../theme/text_styles.dart';

class PricingPage extends StatelessWidget {
  const PricingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF06050F),
      body: SafeArea(
        child: Column(
          children: [
            // Close button
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white, size: 24),
                  onPressed: () => Navigator.of(context).pop(),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ),
            ),
            // Heading
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pick your membership',
                  style: AppTextStyles.h3,
                ),
              ),
            ),
            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Pricing Options
                      Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        child: Column(
                          children: [
                            _buildPricingOption(
                              title: 'Annual',
                              price: '\$199.00',
                              isSelected: true,
                              savePercentage: '16.7%',
                            ),
                            const SizedBox(height: 12),
                            _buildPricingOption(
                              title: 'Semi-annual',
                              price: '\$119.00',
                              isSelected: false,
                            ),
                          ],
                        ),
                      ),

                      // How it works section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildTimelineItem(
                            icon: 'assets/icons/privacy_icon.svg',
                            title: 'Now: Sync assets, grow wealth',
                            description:
                                'Sync your assets to start receiving real-time prompts and unlimited answers with AI chat after syncing your accounts.',
                            showSolidLine: true,
                            showGradientLine: false,
                          ),
                          _buildTimelineItem(
                            icon: 'assets/icons/alarm_icon.svg',
                            title: 'Day 12: Get a reminder',
                            description:
                                'We will send you a reminder before your trial ends.',
                            showSolidLine: true,
                            showGradientLine: false,
                          ),
                          _buildTimelineItem(
                            icon: 'assets/icons/crown_icon.svg',
                            title: 'Day 14: Trial ends',
                            description:
                                'You\'ll be charged on <trial ends date> if you haven\'t canceled your trial.',
                            showSolidLine: false,
                            showGradientLine: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Fixed bottom buttons
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 8),
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.white.withOpacity(0.1),
                    width: 1,
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Handle trial start
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8961FA),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                    child: Text(
                      'Start my 14-day free trial',
                      style:
                          AppTextStyles.bigBold.copyWith(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Handle restore purchase
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Restore Purchase',
                          style: AppTextStyles.pBold.copyWith(
                            color: const Color(0xFF8961FA),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Handle redeem code
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: Text(
                          'Redeem Offer Code',
                          style: AppTextStyles.pBold.copyWith(
                            color: const Color(0xFF8961FA),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPricingOption({
    required String title,
    required String price,
    required bool isSelected,
    String? savePercentage,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? const Color(0xFF8961FA) : const Color(0xFF405178),
          width: isSelected ? 2 : 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                title,
                style: AppTextStyles.big,
              ),
              if (savePercentage != null) ...[
                const SizedBox(width: 8),
                Text(
                  'Save $savePercentage',
                  style: AppTextStyles.pBold.copyWith(
                    color: const Color(0xFF8961FA),
                  ),
                ),
              ],
            ],
          ),
          Text(
            price,
            style: AppTextStyles.bigBold,
          ),
        ],
      ),
    );
  }

  Widget _buildTimelineItem({
    required String icon,
    required String title,
    required String description,
    required bool showSolidLine,
    required bool showGradientLine,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        _buildFeatureItem(
          icon: icon,
          title: title,
          description: description,
          showSolidLine: showSolidLine,
          showGradientLine: showGradientLine,
        ),
        if (showSolidLine)
          _buildTimelineLine(
            isSolid: true,
            height: 120, // Will be adjusted based on actual text height + 24pt
          ),
        if (showGradientLine)
          _buildTimelineLine(
            isSolid: false,
            height: 100,
          ),
      ],
    );
  }

  Widget _buildFeatureItem({
    required String icon,
    required String title,
    required String description,
    required bool showSolidLine,
    required bool showGradientLine,
  }) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF8961FA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      icon,
                      width: 16,
                      height: 16,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.bigBold,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: AppTextStyles.p.copyWith(
                      color: const Color(0xFFC2CEE5),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildTimelineLine({
    required bool isSolid,
    required double height,
  }) {
    return Positioned(
      left: 15, // (40 - 10) / 2 to center the 10pt wide line
      top: 40, // Start from bottom of circle
      child: Container(
        width: 10,
        height: height,
        decoration: BoxDecoration(
          color: isSolid ? const Color(0xFF473384) : null,
          gradient: !isSolid
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF8961FA),
                    const Color(0xFF8961FA).withOpacity(0.0),
                  ],
                )
              : null,
        ),
      ),
    );
  }
}
