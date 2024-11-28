import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/colors.dart';

class LoanDetailCard extends StatelessWidget {
  const LoanDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      decoration: const BoxDecoration(
        color: cardBG,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Text(
            "Dear Customer, Kindly confirm the \n details below before borrowing",
            style: GoogleFonts.mulish(
              textStyle: const TextStyle(
                color: greenBG,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "Amount",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Kes 200,000.00",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Rate",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Due Date",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Instalment",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Total Deductions",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Net Amount",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Product",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Normal Secured Loan",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "5.00%",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "31 Aug 2024",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Instalment",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "882,865",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Instalment",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
