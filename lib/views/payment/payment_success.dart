import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngao_app/constants/colors.dart';

import '../../constants/images.dart';
import '../../widgets/custom_bottom_navigation.dart';
import '../../widgets/floating_button.dart';

class PaymentSuccess extends StatefulWidget {
  const PaymentSuccess({super.key});

  @override
  State<PaymentSuccess> createState() => _PaymentSuccessState();
}

class _PaymentSuccessState extends State<PaymentSuccess> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(thanks),
                const SizedBox(height: 40),
                Text(
                  "Your payment has been confirmed ",
                  style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                      color: blackBG,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset(success),
              ],
            ),
          ),
        ));
  }
}
