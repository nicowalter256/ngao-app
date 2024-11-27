import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';

class LoanAppBar extends StatelessWidget {
  final String title;
  final bool hideNotification;
  final double? font;
  const LoanAppBar(
      {super.key,
      required this.title,
      required this.hideNotification,
      this.font});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 3.5,
      width: size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: greenBG,
        image: DecorationImage(
            image: AssetImage(loanBackground), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(menu),
                Image.asset(logo),
                if (!hideNotification) Image.asset(notification),
                if (hideNotification) const Text("")
              ],
            ),
            const SizedBox(height: 30),
            Text(
              title,
              style: GoogleFonts.mulish(
                textStyle: TextStyle(
                    color: whiteBG,
                    fontWeight: FontWeight.bold,
                    fontSize: font ?? 40),
              ),
            )
          ],
        ),
      ),
    );
  }
}
