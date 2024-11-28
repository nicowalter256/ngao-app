import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/images.dart';
import 'welcome_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Timer? timer;

  void startTimer() {
    timer = Timer(
      const Duration(seconds: 3),
      () async {
        Get.to(const WelcomeScreen());
      },
    );
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

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
              image: AssetImage(loadingImage),
            ),
          ),
        ),
      ),
    );
  }
}
