import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ngao_app/constants/images.dart';

import '../constants/colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  bool obsecure = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(loginBG), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(logo),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Hello,\nwelcome",
                      style: GoogleFonts.mulish(
                        textStyle: const TextStyle(
                            fontSize: 40,
                            color: greyBG,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomTextField(
                    showRequiredText: false,
                    isRequired: false,
                    controller: numberController,
                    keyboardType: TextInputType.text,
                    suffixIcon: const Icon(Icons.person, color: greyBG),
                    hintText: "Identification Number",
                  ),
                  CustomTextField(
                    showRequiredText: false,
                    isRequired: false,
                    controller: phoneController,
                    keyboardType: TextInputType.text,
                    suffixIcon: const Icon(
                      Icons.visibility_off,
                      color: greyBG,
                    ),
                    hintText: "Enter your password",
                  ),
                  const SizedBox(height: 40),
                  CustomButton(
                    btnColor: yellowBG,
                    textColor: whiteBG,
                    onPress: () => {},
                    name: "Login",
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Not yet a Ngao Credit Customer",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: greyBG, fontWeight: FontWeight.normal),
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    btnColor: yellowBG,
                    textColor: whiteBG,
                    onPress: () => {},
                    name: "Register Here",
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "All Right Reserved | www.ngaocredit.com | Terms and Conditions Apply ",
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                          color: whiteBG, fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
