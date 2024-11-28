import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngao_app/widgets/custom_button.dart';
import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../../widgets/floating_button.dart';
import '../loan_app_bar.dart';
import 'loan_detail_card.dart';
import 'loan_success.dart';

class LoanDetail extends StatefulWidget {
  const LoanDetail({super.key});

  @override
  State<LoanDetail> createState() => _LoanDetailState();
}

class _LoanDetailState extends State<LoanDetail> {
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
            image: AssetImage(regbackground),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const LoanAppBar(title: "Apply Loan", hideNotification: false),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: LoanDetailCard(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                btnColor: yellowBG,
                textColor: whiteBG,
                onPress: () => {
                  Get.to(const LoanApplySuccess()),
                },
                name: "Apply Now",
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                btnColor: greenBG,
                textColor: whiteBG,
                onPress: () => {},
                name: "Cancel",
              ),
            ),
          ],
        ),
      )),
    );
  }
}
