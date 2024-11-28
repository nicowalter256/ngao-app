import 'package:flutter/material.dart';
import '../../constants/images.dart';
import '../../widgets/custom_bottom_navigation.dart';
import '../../widgets/floating_button.dart';
import 'loan_app_bar.dart';
import 'loan_card.dart';

class LoanDashboard extends StatefulWidget {
  const LoanDashboard({super.key});

  @override
  State<LoanDashboard> createState() => _LoanDashboardState();
}

class _LoanDashboardState extends State<LoanDashboard> {
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(regbackground),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: [
              LoanAppBar(title: "My Loans", hideNotification: false),
              LoanCard(),
              LoanCard(),
            ],
          ),
        ),
      ),
    );
  }
}
