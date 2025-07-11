import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final int value;
  final Function() onIncrement;
  final Function() onDecrease;

  const NumberSelector({
    super.key,
    required this.title,
    required this.value,
    required this.onIncrement,
    required this.onDecrease,
  });

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.backgroundComponent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(widget.title, style: TextStyles.bodyText),
                Text(
                  widget.value.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        widget.onDecrease();
                      },
                      icon: Icon(Icons.remove),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.primary,
                        ),
                        iconColor: WidgetStatePropertyAll(Colors.white),
                        iconSize: WidgetStatePropertyAll(36),
                      ),
                    ),
                    SizedBox(width: 26),
                    IconButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.primary,
                        ),
                        iconColor: WidgetStatePropertyAll(Colors.white),
                        iconSize: WidgetStatePropertyAll(32),
                      ),
                      onPressed: () {
                        widget.onIncrement();
                      },
                      icon: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
