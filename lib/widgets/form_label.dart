import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/font_size.dart';

class FormLabel extends StatelessWidget {
  const FormLabel({
    super.key,
    required this.labelText,
    this.labelTextColor = blackBG,
    required this.isRequired,
    this.showRequiredText = true,
  });

  // label text
  final String labelText;

  // label color
  final Color labelTextColor;

  final bool isRequired;

  final bool showRequiredText;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // label
        Expanded(
          child: Text(
            labelText,
            style: TextStyle(
              fontSize: fontSize16,
              fontWeight: FontWeight.w500,
              color: labelTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
