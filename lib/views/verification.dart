import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngao_app/constants/colors.dart';
import 'package:ngao_app/views/register/register.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../constants/images.dart';
import '../widgets/custom_button.dart';
import 'Loans/dashboard.dart';
import 'productScreen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
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
            Center(
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: whiteBG,
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 7,
                    color: greenBG,
                  ),
                ),
                child: Image.asset(emailImage),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Verification Code ",
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                    fontSize: 30, color: greenBG, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "we will send you one time code on your phone number",
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                    color: blackBG, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: PinCodeTextField(
                errorTextSpace: 20,
                cursorColor: Theme.of(context).primaryColor,
                controller: otpController,
                appContext: context,
                length: 4,
                obscureText: false,
                keyboardType: TextInputType.number,
                textStyle: TextStyle(color: Theme.of(context).primaryColor),
                animationType: AnimationType.fade,
                validator: (v) {
                  if (v!.length < 3) {
                    return 'Please fill otp field';
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10),
                    selectedColor: Theme.of(context).primaryColor,
                    activeColor: Theme.of(context).primaryColor,
                    inactiveColor: blackBG,
                    fieldHeight: 50,
                    fieldWidth: 48,
                    errorBorderColor: redBG,
                    activeFillColor: Colors.transparent,
                    borderWidth: 2,
                    fieldOuterPadding: const EdgeInsets.all(1)),
                onChanged: (value) {
                  setState(() {
                    //otpFieldValue = value;
                  });
                },
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'If you don’t receive a code!  ',
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: blackBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  TextSpan(
                    text: 'Resend',
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: yellowBG, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "00.30",
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                    color: blackBG, fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: CustomButton(
                btnColor: yellowBG,
                textColor: whiteBG,
                onPress: () => {
                  Get.to(const ProductScreen()),
                },
                name: "Proceed",
              ),
            ),
          ],
        ),
      )),
    );
  }
}
