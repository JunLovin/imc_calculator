import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/components/result_card.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int selectedWeight;
  final int selectedAge;
  const ImcResultScreen({
    super.key,
    required this.height,
    required this.selectedAge,
    required this.selectedWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        title: Text("Resultado"),
      ),
      backgroundColor: AppColors.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ResultCard(title: 'EDAD', intValue: selectedAge),
              SizedBox(height: 30),
              ResultCard(title: 'ALTURA', doubleValue: height),
              SizedBox(height: 30),
              ResultCard(title: 'PESO', intValue: selectedWeight),
            ],
          ),
        ),
      ),
    );
  }
}
