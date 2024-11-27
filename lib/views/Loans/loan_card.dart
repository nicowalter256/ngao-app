import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../../constants/strings.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: const BoxDecoration(
            color: cardBG, borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "90 Day Supplier Loan",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                      color: greenBG,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Kes 0.00 Per Month",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                      color: blackBG,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Next Payment 05th-July-2024",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                      color: blackBG,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: const BoxDecoration(
                      color: deepYellowBG,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      arrearsTxt,
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                          color: whiteBG,
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: 40,
              width: 40,
              decoration:
                  const BoxDecoration(shape: BoxShape.circle, color: yellowBG),
              child: Center(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
