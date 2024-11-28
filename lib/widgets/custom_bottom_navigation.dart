import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngao_app/constants/colors.dart';
import '../constants/images.dart';
import '../views/Loans/apply/apply_loan.dart';
import '../views/Loans/dashboard.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: deepGreyBG,
      type: BottomNavigationBarType.fixed,
      fixedColor: blackBG,
      unselectedItemColor: blackBG,
      onTap: (value) {
        if (value == 0) {
          Get.to(const ApplyLoan());
        }
        if (value == 1) {
          Get.to(const LoanDashboard());
        }
      },
      items: [
        BottomNavigationBarItem(
          label: 'Branch locations',
          icon: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(branch),
                )),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Profile',
          icon: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(user),
                )),
          ),
        ),
      ],
    );
  }
}
