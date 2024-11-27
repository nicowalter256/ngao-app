import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/colors.dart';

class CustomContainer extends StatelessWidget {
  final String name, icon;
  final Color? bgColor;
  const CustomContainer(
      {super.key, required this.name, required this.icon, this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(icon),
        ),
        const SizedBox(height: 7),
        Text(
          name,
          style: GoogleFonts.mulish(
            textStyle: const TextStyle(
                fontSize: 10, color: blackBG, fontWeight: FontWeight.normal),
          ),
        )
      ],
    );
  }
}
