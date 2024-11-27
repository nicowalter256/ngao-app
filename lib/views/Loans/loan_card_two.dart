import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';

class LoanCardTwo extends StatelessWidget {
  const LoanCardTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
            color: cardBG, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Logbook Loan",
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                  color: deepYellowBG,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Loan Balance  ',
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextSpan(
                    text: 'Ksh 300,000',
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "instalment due amount Kes 30,000 Per Month",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                        fontSize: 12,
                        color: blackBG,
                        fontWeight: FontWeight.normal),
                  ),
                ),
                Text(
                  "45%",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                        color: blackBG, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            Image.asset(indicator)
          ],
        ),
      ),
    );
  }
}
