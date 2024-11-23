import 'package:flutter/material.dart';
import 'package:ngao_app/views/verification.dart';

import 'loading_screen.dart';
import 'login_screen.dart';
import 'productScreen.dart';
import 'splash_screen.dart';

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
        LoadingScreen(),
        LoginScreen(),
        SplashOne(),
        VerificationScreen(),
        ProductScreen(),
      ],
    );
  }
}
