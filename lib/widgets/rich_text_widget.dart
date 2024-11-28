import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextWidget extends StatelessWidget {
  final String firstLabel, secondLabel;
  final Color firstColor, secondColor;
  const RichTextWidget(
      {super.key,
      required this.firstLabel,
      required this.secondLabel,
      required this.firstColor,
      required this.secondColor});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: firstLabel,
            style: GoogleFonts.mulish(
              textStyle:
                  TextStyle(color: firstColor, fontWeight: FontWeight.bold),
            ),
          ),
          TextSpan(
            text: secondLabel,
            style: GoogleFonts.mulish(
              textStyle:
                  TextStyle(color: secondColor, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
