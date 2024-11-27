import 'package:flutter/material.dart';
import 'package:ngao_app/views/verification.dart';

import 'Loans/dashboard.dart';
import 'Loans/dashboardTwo.dart';
import 'dashboard.dart';
import 'loading_screen.dart';
import 'login_screen.dart';
import 'payment/payment_screen.dart';
import 'productScreen.dart';
import 'splash_screen.dart';
import 'welcome_screen.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: const [
        WelcomeScreen(),
        LoadingScreen(),
        LoginScreen(),
        SplashOne(),
        VerificationScreen(),
        DashboardScreen(),
        ProductScreen(),
        LoanDashboard(),
        DashboardTwo(),
        PaymentScreen(),
      ],
    );
  }
}
