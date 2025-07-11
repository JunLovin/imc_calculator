import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';
import 'package:imc_calculator/components/height_selector.dart';
import 'package:imc_calculator/components/number_selector.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';
import 'package:imc_calculator/screens/imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreenState();
}

class _ImcHomeScreenState extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;
  double height = 150;
  double? selectedHeight;
  String heightTitle = "ALTURA";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          title: heightTitle,
          height: height,
          onHeightChange: (newHeight) {
            setState(() {
              height = newHeight;
            });
          },
        ),
        Row(
          children: [
            NumberSelector(
              title: "Peso",
              value: selectedWeight,
              onIncrement: () {
                setState(() {
                  selectedWeight++;
                });
              },
              onDecrease: () {
                setState(() {
                  selectedWeight--;
                });
              },
            ),
            NumberSelector(
              title: "Edad",
              value: selectedAge,
              onIncrement: () {
                setState(() {
                  selectedAge++;
                });
              },
              onDecrease: () {
                setState(() {
                  selectedAge--;
                });
              },
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImcResultScreen(
                      height: height,
                      selectedAge: selectedAge,
                      selectedWeight: selectedWeight,
                    ),
                  ),
                );
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text("Calcular", style: TextStyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
