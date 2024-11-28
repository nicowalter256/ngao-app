import 'package:flutter/material.dart';
import 'views/Loans/dashboard.dart';
import 'views/Loans/dashboardTwo.dart';
import 'views/dashboard.dart';
import 'views/login_screen.dart';
import 'views/page_view.dart';
import 'views/payment/payment_screen.dart';
import 'views/payment/payment_success.dart';
import 'views/register/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NGAO APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RegisterScreen(),
      //  home: const PageViewWidget(),
    );
  }
}
