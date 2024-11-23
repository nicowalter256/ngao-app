import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import '../constants/images.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(logo),
              ),
              const SizedBox(height: 100),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(weImage),
              ),
              const SizedBox(height: 20),
              Text(
                "Unlock a world of exclusive benefits  with our Ngao Loyalty points. More points = more cash. ",
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                      color: blackBG, fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 100),
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
                    "I agree the terms and conditions",
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(color: greenBG),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                onPress: () => {},
                name: "Join  the Ngao Loyalty Points",
                btnColor: yellowBG,
                textColor: whiteBG,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
