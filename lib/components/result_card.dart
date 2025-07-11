import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ResultCard extends StatelessWidget {
  final String title;
  final int? intValue;
  final double? doubleValue;
  const ResultCard({
    super.key,
    required this.title,
    this.intValue,
    this.doubleValue,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 300,
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title, style: TextStyles.bodyText),
                Text(
                  intValue?.toString() ?? doubleValue!.toStringAsFixed(0),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
