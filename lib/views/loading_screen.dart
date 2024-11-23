import 'package:flutter/material.dart';

import '../constants/images.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

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
