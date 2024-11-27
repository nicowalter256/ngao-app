import 'package:flutter/material.dart';
import 'package:ngao_app/constants/colors.dart';
import 'package:ngao_app/widgets/custom_button.dart';

import '../../constants/images.dart';
import '../../widgets/custom_bottom_navigation.dart';
import '../../widgets/floating_button.dart';
import '../Loans/loan_app_bar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
              const LoanAppBar(
                  font: 13,
                  title: "Please enter the loan payment details",
                  hideNotification: true),
              const SizedBox(height: 200),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomButton(
                    onPress: () => {},
                    name: "Make Payment",
                    btnColor: yellowBG,
                    textColor: whiteBG),
              )
            ],
          ),
        ),
      ),
    );
  }
}
