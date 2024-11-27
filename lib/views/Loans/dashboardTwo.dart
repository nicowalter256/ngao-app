import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngao_app/constants/static_data.dart';

import '../../constants/colors.dart';
import '../../constants/images.dart';
import '../../widgets/custom_bottom_navigation.dart';
import '../../widgets/floating_button.dart';
import 'custom_container.dart';
import 'loan_app_bar.dart';
import 'loan_card_two.dart';

class DashboardTwo extends StatefulWidget {
  const DashboardTwo({super.key});

  @override
  State<DashboardTwo> createState() => _DashboardTwoState();
}

class _DashboardTwoState extends State<DashboardTwo> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      bottomNavigationBar: const BottomNavigationWidget(),
      floatingActionButton: const FloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(regbackground), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const LoanAppBar(title: "My Loan", hideNotification: true),
              const LoanCardTwo(),
              Text(
                "Ksh 300,000 ",
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                    color: blackBG,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Car Logbook Loan",
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                    color: blackBG,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  loanList.length,
                  (index) {
                    return GestureDetector(
                      onTap: () => {},
                      child: CustomContainer(
                        bgColor: loanList[index]['color'],
                        name: loanList[index]['name'],
                        icon: loanList[index]['icon'],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
