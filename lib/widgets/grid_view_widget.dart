import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/colors.dart';
import '../constants/static_data.dart';

class GrodViewWidget extends StatelessWidget {
  const GrodViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: containerBG,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: GridView.builder(
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 15,
            mainAxisSpacing: 20,
            mainAxisExtent: 120,
          ),
          itemCount: dashBoardTabsList.length,
          itemBuilder: (BuildContext context, index) {
            var data = dashBoardTabsList[index];
            return Container(
              decoration: BoxDecoration(
                color: cardBG,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: blackBG,
                    blurRadius: 4,
                    offset: Offset(1, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    data['icon'],
                    height: 50,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    data['name'],
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
