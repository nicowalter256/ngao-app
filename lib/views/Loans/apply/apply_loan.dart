import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../widgets/custom_border_text_field.dart';
import '../../../widgets/custom_bottom_navigation.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_drop_down.dart';
import '../../../widgets/floating_button.dart';
import '../../../widgets/rich_text_widget.dart';
import '../loan_app_bar.dart';
import 'loan_detail.dart';

class ApplyLoan extends StatefulWidget {
  const ApplyLoan({super.key});

  @override
  State<ApplyLoan> createState() => _ApplyLoanState();
}

class _ApplyLoanState extends State<ApplyLoan> {
  TextEditingController amountController = TextEditingController();
  TextEditingController termController = TextEditingController();
  TextEditingController purposeController = TextEditingController();

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
            Expanded(
                child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const RichTextWidget(
                        firstColor: blackBG,
                        secondColor: yellowBG,
                        firstLabel: 'Your Approval Limit is ksh  ',
                        secondLabel: '500,000,000!'),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width / 3,
                          height: 50,
                          color: yellowBG,
                          child: Center(
                            child: Text(
                              "New Loan",
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                    color: whiteBG,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 3,
                          height: 50,
                          color: lightGreenBG,
                          child: Center(
                            child: Text(
                              "Loan Top Up",
                              style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                                    color: blackBG,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    CustomDropdown(
                      label: "Select loan product",
                    ),
                    CustomBorderTextField(
                      isRequired: true,
                      labelText: "Amount Kes",
                      controller: amountController,
                      keyboardType: TextInputType.number,
                      hintText: '200,000 . 00',
                    ),
                    CustomBorderTextField(
                      isRequired: true,
                      labelText: "Loan Term (Months)",
                      controller: termController,
                      keyboardType: TextInputType.number,
                      hintText: 'Please Pick Our Loan Product',
                    ),
                    CustomBorderTextField(
                      isRequired: true,
                      labelText: "Loan Purpose",
                      controller: purposeController,
                      keyboardType: TextInputType.number,
                      hintText: 'Please Pick Our Loan Product',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100, top: 30),
                      child: CustomButton(
                        btnColor: yellowBG,
                        textColor: whiteBG,
                        onPress: () => {
                          Get.to(const LoanDetail()),
                        },
                        name: "Continue",
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
