import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/Loans/apply/apply_loan.dart';
import 'views/Loans/apply/loan_detail.dart';
import 'views/Loans/dashboard.dart';
import 'views/Loans/dashboardTwo.dart';
import 'views/dashboard.dart';
import 'views/loading_screen.dart';
import 'views/login_screen.dart';
import 'views/page_view.dart';
import 'views/payment/payment_screen.dart';
import 'views/payment/payment_success.dart';
import 'views/register/register.dart';
import 'views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NGAO APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoadingScreen(),
      //  home: const PageViewWidget(),
    );
  }
}
