import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../widgets/custom_button.dart';
import '../loan_app_bar.dart';

class LoanApplySuccess extends StatefulWidget {
  const LoanApplySuccess({super.key});

  @override
  State<LoanApplySuccess> createState() => _LoanApplySuccessState();
}

class _LoanApplySuccessState extends State<LoanApplySuccess> {
  bool check = false;
  var data =
      "These terms and conditions ('hereinafter referred to as the Terms and Conditions') form the contract between You (as hereinafter defined) and Ngao Credit Limited ('hereinafter referred to as NCL') and together with the Repayment Terms (as hereinafter defined) and our Data Privacy Statement contain the complete Terms and Conditions which shall be applicable to the NCL Digital Credit Services (as hereinafter defined) ";

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
          children: [
            const LoanAppBar(title: "", hideNotification: false),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  children: [
                    Text(
                      data,
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                            color: blackBG, fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'By continuing, you agree to our  ',
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                  color: blackBG,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                          TextSpan(
                            text: 'terms and conditions',
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                  color: yellowBG, fontWeight: FontWeight.bold),
                            ),
                          ),
                          TextSpan(
                            text: ' data and cookie policy ',
                            style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                                  color: blackBG, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: whiteBG,
                          activeColor: yellowBG,
                          value: check,
                          onChanged: (value) {
                            setState(() {
                              check = !check;
                            });
                          },
                        ),
                        Text(
                          "Check to confirm",
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(color: blackBG),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      btnColor: yellowBG,
                      textColor: whiteBG,
                      onPress: () => {},
                      name: "Ok",
                    ),
                    const SizedBox(height: 10),
                    CustomButton(
                      btnColor: greenBG,
                      textColor: whiteBG,
                      onPress: () => {},
                      name: "Cancel",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
